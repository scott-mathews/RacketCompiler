#lang racket

;;; === Partial Evaluator === ;;;

;(define (pe-neg2 exp)
;  (match exp
;    [ n         #:when (fixnum? n)                     (fx- 0 n)] ; int -> -int
;    [`(+ ,n ,m) #:when (and (fixnum? n) (fixnum? m))  `(+ ,(pe-neg2 n) (pe-neg2 m))] ; (+ int int) -> (+ -int -int)
;    [`(+ ,n ,e) #:when (fixnum? n)                    `(+ ,(pe-neg2 n) (- ,e))] ; (+ int exp) -> (+ -int (- exp))
;    [`(+ ,e ,n) #:when (fixnum? n)                     (pe-neg2 `(+ n e))] ; (+ exp int) -> (+ -int (-exp))
;    [e                                                `(- ,e)])) ; exp -> (- exp)

;(define (pe-add2 left right)
;  (match* (left right)
;    [( n            m)           #:when (and (fixnum? n) (fixnum? m))  (fx+ n m)] ; int int -> int
;    [( n           `(+ ,m ,b))   #:when (and (fixnum? n) (fixnum? m)) `(+ ,(fx+ n m) ,b)] ; int (+ int exp) -> (+ int exp)
;    [(`(+ ,m ,b)    n)           #:when (and (fixnum? n) (fixnum? m)) `(+ ,(fx+ n m) ,b)] ; (+ int exp) int -> (+ int exp)
;    [( n           `(+ ,ra ,rb)) #:when (fixnum? n)                    (pe-add2 (pe-add2 n ra) rb)] ; int (+ exp exp) -> (pe-add2 (pe-add2 int exp) exp)
;    [(`(+ ,la ,lb) `(+ ,ra ,rb))                                      `(+ ,(pe-add2 ra la) ,(pe-add2 rb lb))] ; (+ exp exp) (+ exp exp) -> (+ (pe-add2 exp exp) (pe-add2 exp exp))
;    [( a            b)           #:when (fixnum? b)                    (pe-add2 b a)] ; exp int -> (pe-add2 int exp)
;    [( a            b)                                                `(+ ,a ,b)])) ; exp exp -> (+ exp exp)


;(define (pe-arith-old e)
;  (match e
;    [(? fixnum?)    e]
;    [(? symbol?)    e]
;    [(? boolean?)   e]
;    [`(read)       `(read)]
;    [`(- ,e1)       (pe-neg2 (pe-arith e1))]
;    [`(+ ,e1 ,e2)   (pe-add2 (pe-arith e1) (pe-arith e2))];;
;    [`(let ([,x ,e]) ,body) `(let ([,x ,(pe-arith e)]) ,(pe-arith body))]
;    [`(if ,cnd ,thn ,els) `(if ,cnd ,thn ,els)]
;    [`(program ,type ,e) `(program ,type ,(pe-arith e))]
;    ))

;(define (pe-arith e)
;  e)

;;; End Partial Evaluator ;;;