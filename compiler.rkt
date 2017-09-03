#lang racket
(require racket/fixnum)
(require racket/trace)
(require "interp.rkt")

;; This exports r0-passes, defined below, to users of this file.
(provide r0-passes)

;; The following pass is just a silly pass that doesn't change anything important,
;; but is nevertheless an example of a pass. It flips the arguments of +. -Jeremy
(define (flipper e)
  (match e
    [(? fixnum?) e]
    [`(read) `(read)]
    [`(- ,e1) `(- ,(flipper e1))]
    [`(+ ,e1 ,e2) `(+ ,(flipper e2) ,(flipper e1))]
    [`(program ,e) `(program ,(flipper e))]
    ))


;; Next we have the partial evaluation pass described in the book.
(define (pe-neg r)
  (cond [(fixnum? r) (fx- 0 r)]
	[else `(- ,r)]))

(define (pe-add r1 r2)
  (cond [(and (fixnum? r1) (fixnum? r2)) (fx+ r1 r2)]
	[else `(+ ,r1 ,r2)]))

(define (pe-neg2 exp)
  (match exp
    [ n             #:when (fixnum? n)                     (fx- 0 n)]
    [`(+ ,n ,m)     #:when (and (fixnum? n) (fixnum? m))  `(+ ,(pe-neg2 n) (pe-neg2 m))]
    [`(+ ,n ,e)     #:when (fixnum? n)                    `(+ ,(pe-neg2 n) ,e)]
    [`(+ ,e ,n)     #:when (fixnum? n)                     (pe-neg2 `(+ n e))]
    [e                                                    `(- e)]
    ))

(define (pe-add2 left right)
  (match* (left right)
    [( n            m)           #:when (and (fixnum? n) (fixnum? m))  (fx+ n m)]
    [( n           `(+ ,m ,b))   #:when (and (fixnum? n) (fixnum? m)) `(+ ,(fx+ n m) ,b)]
    [(`(+ ,m ,b)    n)           #:when (and (fixnum? n) (fixnum? m)) `(+ ,(fx+ n m) ,b)]
    [( n           `(+ ,ra ,rb)) #:when (fixnum? n)                    (pe-add2 (pe-add2 n ra) rb)]
    [(`(+ ,la ,lb) `(+ ,ra ,rb))                                      `(+ ,(pe-add2 ra la) ,(pe-add2 rb lb))]
    [( a            b)           #:when (fixnum? b)                    (pe-add2 b a)]
    [( a            b)                                                `(+ ,a ,b)]))

(define (pe-arith e)
  (match e
    [(? fixnum?)    e]
    [`(read)       `(read)]
    [`(- ,e1)       (pe-neg2 (pe-arith e1))]
    [`(+ ,e1 ,e2)   (pe-add2 (pe-arith e1) (pe-arith e2))]
    [`(program ,e) `(program ,(pe-arith e))]
    ))

;; Define the passes to be used by interp-tests and the grader
;; Note that your compiler file (or whatever file provides your passes)
;; should be named "compiler.rkt"
(define r0-passes
  `( ("flipper" ,flipper ,interp-scheme)
     ("partial evaluator" ,pe-arith ,interp-scheme)
     ))

