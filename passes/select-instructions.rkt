#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")
(require "../utilities/constants.rkt")

(provide select-instructions)

;;; === Select Instructions === ;;;

;;; Helpers ;;;

(define (val->typedval e)
  (match e
    [(? fixnum?) `(int ,e)]
    [(? symbol?) `(var ,e)]
    [(? boolean?) (if e
                      `(int 1)
                      `(int 0))]
    [else (displayln (format "WARNING: in val->typedval didn't match ~a" e))]))

; Tag Helpers
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

; Given a list of vars (function arguments) tells you how many stack
; locations will be required to pass all of the args. (We only use stack
; if the number of arguments is greater than the length of arg-reg-list.)
(define (maxstack vars) (* 8 (if (< (length vars) (length arg-reg-list))
                            0
                            (- (length vars) (length arg-reg-list)))))

; def-helper
; traverses the arguments to a function and adds statements to add those arguments to their variable within the function
(define def-helper
  (lambda (args regs inst stack-loc reg)
    (cond
      [(empty? args)  (if (empty? inst) `() (map-me select-instructions inst))]
      [(empty? regs) (cons `(movq (deref ,reg ,stack-loc) ,(val->typedval (car args)))
                           (def-helper (cdr args) regs inst (+ 8 stack-loc) reg))]
      ; if reg = rsp then it is sender, start at 0
      ; if reg = rbp then it is receiver, start at 16
      [else (cons `(movq (reg ,(car regs))
                         ,(if (pair? (car args)) (val->typedval (caar args)) (val->typedval (car args))))
                  (def-helper (cdr args) (cdr regs) inst (if (equal? reg `rsp)
                                                             0
                                                             16) reg))])))

; select-define-helper
; adds instructions to move arguments for a function into their variables within the function.
(define (select-define-helper def)
  (match def
    [`(define (,fname ,args ...) ,vars ,inst ...)
     `(define (,fname) ,(length args) (,vars ,(maxstack vars))
        ,(def-helper args arg-reg-list inst 0 `rbp))]
    [else (displayln (format "WARNING: didn't pick ~a in select-define-helper" def))]))

;;; Select Instructions Itself ;;;

(define (select-instructions exp)
  (match exp
    [`(assign ,lhs (allocate ,len (Vector ,type* ...)))            ; allocate
     (let ([tag (build-tag type* len)])
       (list `(movq (global-value free_ptr) (reg rax))
             `(movq (reg rax) (var ,lhs))
             `(addq (int ,(* 8 (+ 1 len))) (global-value free_ptr))
             `(movq (var ,lhs) (reg r11))
             `(movq (int ,tag) (deref r11 0))))]
    [`(assign ,lhs (vector-ref ,vec ,n))                            ; vector-ref
     (list `(movq (var ,vec) (reg r11))
           `(movq (deref r11 ,(* 8 (+ n 1))) (var ,lhs)))]
    [`(assign ,lhs (vector-set! ,vec ,n ,arg))                       ; vector-set!
     (list `(movq (var ,vec) (reg r11))
           `(movq ,(val->typedval arg) (reg rax))
           `(movq (reg rax) (deref r11 ,(* 8 (+ n 1))))
           `(movq (int 0) (var ,lhs)))]
    [`(assign ,var (void))
     `((movq (int 0) (var ,var)))]
    [`(assign ,var (global-value ,space))
     `((movq (global-value ,space) (reg rax))
       (movq (reg rax) (var ,var)))]
    [`(collect ,bytes)                                            ;collect
     (if (equal? (system-type) `windows)
     (list
      `(movq (reg r15) (reg rcx))
      `(movq (int ,bytes) (reg rdx))
      `(callq collect))
     (list
      `(movq (reg r15) (reg rdi))
      `(movq (int ,bytes) (reg rsi))
      `(callq collect)))]
    
    [`(assign ,lhs (read)) (list `(callq read_int)
                                 `(movq (reg rax) (var ,lhs)))]
    [`(assign ,v1 ,v2) #:when (terminal? v2) (list `(movq ,(val->typedval v2) ,(val->typedval v1)))]
    [`(assign ,v (- ,e)) (if (equal? v e)
                             (list `(negq ,(val->typedval v)))
                             (list `(movq ,(val->typedval e) ,(val->typedval v))
                                   `(negq ,(val->typedval v))))]
    [`(assign ,v (not ,e)) (if (equal? v e)
                              (list `(xorq (int 1) ,(val->typedval v)))
                              (list `(movq ,(val->typedval e) ,(val->typedval v))
                                    `(xorq (int 1) ,(val->typedval v))))]
    [`(assign ,v (+ ,e1 ,e2)) (cond
                                [(equal? v e1) (list `(addq ,(val->typedval e2) ,(val->typedval v)))]
                                [(equal? v e2) (list `(addq ,(val->typedval e1) ,(val->typedval v)))]
                                [else (list `(movq ,(val->typedval e1) ,(val->typedval v))
                                            `(addq ,(val->typedval e2) ,(val->typedval v)))])]
    [`(assign ,v (app ,fun ,args ...))  (append
                                         (map (lambda (x) (list (first x) (third x) (second x))) (def-helper (reverse args) arg-reg-list `() 0 `rsp))
                                         `((indirect-callq (var ,fun)))
                                         `((movq (reg rax) (var ,v))))]
    [`(assign ,v (function-ref ,fname)) `((leaq (function-ref ,fname) (var ,v)))]
    [`(assign ,v (,cmp ,e1 ,e2)) (list `(movq ,(val->typedval e2) (reg rax))
                                       `(cmpq (reg rax) ,(val->typedval e1))
                                       `(set ,(cmp->cc cmp) (byte-reg al))
                                       `(movzbq (byte-reg al) (reg rax))
                                       `(movq (reg rax) ,(val->typedval v)))]
    [`(if (,cmp ,arg1 ,arg2) (,thn ...) (,els ...)) (list `(movq ,(val->typedval arg2) (reg rax))
                                                          `(if (,cmp (reg rax) ,(val->typedval arg1))
                                                               ,(values (map-me select-instructions thn))
                                                               ,(values (map-me select-instructions els))))]
    [`(return ,v) (list `(movq ,(val->typedval v) (reg rax)))]
    [`(program (,vars ...) ,type (defines ,defs ...) ,instrs ...)
     `(program ,vars
               ,type
               (defines ,@(map select-define-helper defs))
               ,@(remove-duplicate-movq (values (map-me select-instructions instrs))))]
    ))


