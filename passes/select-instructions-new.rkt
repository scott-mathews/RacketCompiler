#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")

(provide select-instructions)

; Converts C_n language to x86_n language
(define (select-instructions exp)
  (match exp
    [`(program (,vars ...) ,type (defines ,defs ...) ,stmts ...)
     `(program ,vars ,type (defines ,@(map convert-def defs)) ,@(convert-statements stmts))]))

; Converts a list of defs from its C to its x86 equivalent
(define (convert-defs defs)
  (foldr append '() (map (convert-def defs))))

; Converts a def from its C to its x86 equivalent
(define (convert-def def)
  (match def
    [`(define (,fname ,args ...) ,vars ,stmts ...)
     `(define (,fname) (,vars ,(calc-maxstack args))  ,@(modify-move-arguments args) ,@(convert-statements stmts))]))

(define (calc-maxstack vars)
  (max 0 (* 8 (- (length vars) 6))))

; Converts a list of statements form from its C to its x86 equivalent
(define (convert-statements stmts)
  (foldr append '() (map convert-stmt stmts)))

; Converts a statment from its C to its x86 equivalent
(define (convert-stmt stmt)
  (match stmt
    [`(assign ,var ,exp) (define new-exp (convert-exp exp))
                         ; Append the var to the right hand side of the last expression
                         ; in new-exp lhs marks where to put var
                         (replace-marker new-exp `(,(cons `lhs (convert-arg var))))]
    [`(collect ,bytes) `((movq (reg r15) (reg rdi))
                         (movq (int ,bytes) (reg rsi))
                         (callq collect))]
    [`(if (,cmp ,arg1 ,arg2) ,stmts-thn ,stmts-els) `((if (,cmp ,(convert-arg arg2) ,(convert-arg arg1))
                                                                      ,(convert-statements stmts-thn)
                                                                      ,(convert-statements stmts-els)))]
    [`(return ,arg) `((movq ,(convert-arg arg) (reg rax)))]
    ))

; gives offset for dereffing vectors
(define (deref-vector n)
  (* 8 (add1 n)))

; replace marker in instructions with expression
(define (replace-marker stmts marker-mappings)
  (map (lambda (instr)
         (if (list? instr)
             (map (lambda (instr-arg)
                    (if
                     (member instr-arg (map car marker-mappings))
                     (lookup instr-arg marker-mappings)
                     instr-arg)) instr)
             instr)) stmts))

; converts an exp form from its C to its x86 equivalent.
(define (convert-exp exp)
  (match exp
    ; In the case of a function-ref arg we must return a leaq
    ; Otherwise just a movq
    [(? arg?) `(,(if (and (list? exp) (equal? (car exp) 'function-ref))
                     (convert-arg exp)
                     `(movq ,(convert-arg exp) lhs)))]
    [`(void) `((movq (int 0) lhs))]
    [`(global-value ,name) `((movq (global-value ,name) lhs))]
    
    ;;;;;;;;;;;;;;;;;;;;;
    ; Handle Operations ;
    ;;;;;;;;;;;;;;;;;;;;;

    ;; Project and Inject ;;
    [`(inject ,arg ,type) (cond
                            ; Vectors and Procedures
                            [(list? type) `((movq ,(convert-arg arg) lhs)
                                            (orq (int ,(tagof type)) lhs))]

                            ; All other types
                            [else `((movq ,(convert-arg arg) lhs)
                                    (salq (int 3) lhs)
                                    (orq (int ,(tagof type) lhs)))])]

    
    [`(project ,arg ,type) (cond
                             ; Vectors and Procedures
                             [(list? type) `((movq ,(convert-arg arg) lhs)
                                             (andq (int 7) lhs)
                                             (if (eq? lhs (int ,(tagof type)))
                                                 ((movq (int 7) lhs)
                                                  (notq lhs)
                                                  (andq ,(convert-arg arg) lhs))
                                                 ((callq exit))))]

                             ; All other types
                             [else `((movq ,(convert-arg arg) lhs)
                                     (andq (int 7) lhs)
                                     (if (eq? lhs (int ,(tagof type)))
                                         ((movq ,(convert-arg arg) lhs)
                                          (sarq (int 3) lhs))
                                         ((callq exit))))])]
    
    ;; Function Operations ;;
    [`(app ,arg ,args ...) `(,@(move-arguments args)
                             ; I believe the below code is unnecessary. On your next trip
                             ; here please remove it!
                             ; If the applied arg is a function-ref, we must first leaq it.
                             ;,(if (and (list? arg) (equal? (car arg) 'function-ref))
                             ;     (convert-arg arg)
                             ;     `(movq ,(convert-arg arg) lhs))
                             (indirect-callq ,(convert-arg arg))
                             (movq (reg rax) lhs))]

    ;; Vector Operations ;;
    [`(vector-ref ,vec ,n) `((movq ,(convert-arg vec) (reg r11))
                             (movq (deref r11 ,(deref-vector n)) lhs))]
    [`(vector-set! ,vec ,n ,arg) `((movq ,(convert-arg vec) (reg r11))
                                   (movq ,(convert-arg arg) (deref r11 ,(deref-vector n)))
                                   (movq (int 0) lhs))]
    [`(allocate ,len ,type) `((movq (global-value free_ptr) lhs)
                              (addq (int ,(deref-vector len)) (global-value free_ptr))
                              (movq lhs (reg r11))
                              (movq (int ,(build-tag type len)) (deref r11 0)))]

    ;; Arithmetic Operations ;;
    [`(+ ,arg1 ,arg2) `((movq ,(convert-arg arg1) lhs)
                        (addq ,(convert-arg arg2) lhs))]
    [`(- ,arg) `((movq ,(convert-arg arg) lhs)
                 (negq lhs))]

    ;; Boolean Operations ;;
    [`(not ,arg) `((movq ,(convert-arg arg) lhs)
                   (xorq (int 1) lhs))]

    ;; Comparison Operations ;;
    [`(,cmp ,arg1 ,arg2) #:when (cmp? cmp)
                         `((cmpq ,(convert-arg arg1) ,(convert-arg arg2))
                           (set ,(cmp->cc cmp) (byte-reg al))
                           (movzbq (byte-reg al) lhs))]

    ;; Other Operations ;;
    [`(read) `((callq read_int)
               (movq (reg rax) lhs))]
    ))

; converts an arg form from its C to its x86 equivalent
(define (convert-arg arg)
  (match arg
    [(? symbol?) `(var ,arg)]
    [(? fixnum?) `(int ,arg)]
    [(? boolean?) `(int ,(if arg 1 0))]
    [`(function-ref ,name) `(leaq (function-ref ,name) lhs)]))

(define (arg? exp)
  (or (boolean? exp) (fixnum? exp) (symbol? exp) (or (if (list? exp) (equal? 'function-ref (car exp)) #f))))

;; Tag Helpers ;;
(define (build-pointer-mask type)
  (define n 0)
  (for ([item (reverse (cdr type))])
    (if (and (list? item) (equal? (car item) 'Vector))
        (set! n (bitwise-ior (arithmetic-shift n 1) 1))
        (set! n (bitwise-ior (arithmetic-shift n 1) 0))))
  n)

(define (insert-length len pointer-mask)
  (bitwise-ior len (arithmetic-shift pointer-mask 6)))

(define (build-tag type len)
  (bitwise-ior 1
  (arithmetic-shift
  (bitwise-ior (length (cdr type))
  (arithmetic-shift (build-pointer-mask type)
  6))
1)))

;; Function Application Helpers ;;
(define (move-arguments args)
  (define move-instrs '())
  (define arg-counter 0)
  (for ([arg args])
    (set! move-instrs (cons `(movq ,(convert-arg arg) ,(make-arg-location arg-counter)) move-instrs))
    (set! arg-counter (add1 arg-counter)))
  (reverse move-instrs))

(define (make-arg-location n)
  (if (>= n (vector-length arg-registers))
      `(deref rsp ,(* 8 (- n (vector-length arg-registers))))
      `(reg ,(vector-ref arg-registers n))))

(define (modify-move-arguments args)
  (define moves (move-arguments args))
  (map (lambda (instr) `(,(first instr)
                         ,(match (third instr)
                            [`(deref rsp ,n) `(deref rbp ,(+ 16 n))]
                            [else (third instr)])
                         ,(second instr)))
       moves))