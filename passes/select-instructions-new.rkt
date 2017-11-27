#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")

(provide select-instructions)

; Converts C_n language to x86_n language
(define (select-instructions exp)
  (match exp
    [`(program (,vars ...) ,type (defines ,defs ...) ,stmts ...)
     `(program ,vars ,type (defines ,@(map select-instructions defs)) ,@(convert-statements stmts))]))


; Converts a list of defs from its C to its x86 equivalent
(define (convert-defs defs)
  (foldr append '() (map (convert-def defs))))

; Converts a def from its C to its x86 equivalent
(define (convert-def def)
  (match def
    [`(define (,fname ,args ...) ,vars ,stmts ...)
     `(define (,fname) ,(calc-maxstack args) ,vars ,@(modify-move-arguments args) ,@(convert-statements stmts))]))

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
    [`(if (,cmp ,arg1 ,arg2) ,stmts-thn ,stmts-els) `((if (,cmp ,(convert-arg arg1) ,(convert-arg arg2))
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
    [(? arg?) `((movq ,(convert-arg exp) lhs))]
    [`(void) `((movq (int 0) lhs))]
    [`(global-value ,name) `((movq (global-value ,name) lhs))]
    

    ;;;;;;;;;;;;;;;;;;;;;
    ; Handle Operations
    ;;;;;;;;;;;;;;;;;;;;;

    ;; Function Operations ;;
    [`(app ,arg ,args ...) `(,@(move-arguments args)
                             (indirect-callq ,(convert-arg arg)))]

    ;; Operations With Vectors ;;
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
  (or (boolean? exp) (fixnum? exp) (symbol? exp)))

;; Tag Helpers ;;
(define (build-pointer-mask type)
  (define n 0)
  (for ([item type])
    (if (list? item)
        (begin (set! n (arithmetic-shift n 1))
               (set! n (bitwise-ior n 1)))
        (set! n (arithmetic-shift n 1))))
  n)

(define (insert-length len pointer-mask)
  (bitwise-ior (arithmetic-shift pointer-mask 6) len))

(define (build-tag type len)
  (define pointer-mask (build-pointer-mask type))
  (define len-tagged (insert-length len pointer-mask))
  (bitwise-ior (arithmetic-shift len-tagged 1) 1))

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