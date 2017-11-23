#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")
(require "../utilities/constants.rkt")

(provide assign-homes)

;;; === Assign Homes === ;;;
(define (alloc-size vars) 
  (let ([x (* 8 (length vars))]) 
    (if (= (modulo x 16) 0) 
        x 
        (+ x 8))))

(define (rootstack-alloc-size vars)
  (* (length vars) 8))

(define (make-homes vars ctr) 
  (cond [(empty? vars) '()] 
        [else (cons (cons (car vars) ctr) (make-homes (cdr vars) (- ctr 8)))]))

(define (type->home arg alist rootlist)
  (match arg
    [`(,type ,val) #:when (and (equal? type `var) (member val (map car alist)))
                       `(deref rbp ,(lookup val alist))]
    [`(,type ,val) #:when (and (equal? type `var) (member val (map car rootlist)))
                       `(deref r15 ,(lookup val rootlist))]
    [else arg])
  )

(define (assign-homes alist rootlist) 
  (lambda (exp) 
    (match exp
      [`(,op ,arg1 ,arg2) (list `(,op ,(type->home arg1 alist rootlist) ,(type->home arg2 alist rootlist)))]
      [`(,op ,arg) (list `(,op ,(type->home arg alist rootlist)))]
      [`(if ,cnd ,thn ,els) (list `(if ,@((assign-homes alist rootlist) cnd) ,(map-me (assign-homes alist rootlist) thn) ,(map-me (assign-homes alist rootlist) els)))] 
      [`(callq ,fn) (list exp)]
      [`(define (,f) ,n ((,vars ,rootstack-vars) ,m) ,instrs ...)
       `(define (,f) ,n ((,(alloc-size vars) ,(rootstack-alloc-size rootstack-vars)) ,m) ,@(values (map-me (assign-homes (make-homes vars (- -48 m)) (make-homes rootstack-vars -8)) instrs)))]
      [`(program ((,vars ...) (,rootstack-vars ...)) ,type (defines ,defs ...) ,instrs ...)
       (define new-defs '())
       (for ([def defs])
         (set! new-defs (cons ((assign-homes alist rootlist) def) new-defs)))
       `(program (,(alloc-size vars) ,(rootstack-alloc-size rootstack-vars)) ,type (defines ,@(reverse new-defs)) ,@(values (remove-duplicate-movq (map-me (assign-homes (make-homes vars -48) (make-homes rootstack-vars -8)) instrs))))]))) 

;;; End Assign Homes ;;;