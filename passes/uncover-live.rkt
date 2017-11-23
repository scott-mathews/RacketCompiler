#lang racket

(require "../utilities.rkt")
(provide uncover-live)

;;; === Uncover Live === ;;;

(define (live-after-set read written prevset)
  (set-union read (set-subtract prevset written)))

(define (uncover-live exp)
  (match exp
    [`(program (,vars ...) ,type (defines ,defs ...) ,instrs ...)
     (define-values (sets new-instrs) (get-set-of-vars-from-instructions instrs (set)))
     (define new-defs '())
     (for ([def defs])
       (match def [`(define (,f) ,n ((,vars* ...) ,m) (,instrs* ...))
                    (define-values (def-set def-instrs) (get-set-of-vars-from-instructions instrs* (set)))
                    (set! new-defs (cons `(define (,f) ,n ((,vars* ,def-set) ,m) ,@def-instrs) new-defs))]))
     `(program (,vars ,sets) ,type (defines ,@(reverse new-defs)) ,@new-instrs)]))

(define (get-set-of-vars-from-instructions instrs initial-set)
  (define sets `(,initial-set))
  (define new-instrs '())
  (for ([instr (reverse instrs)])
    (if (equal? instr '())
        "pass"
        (match instr
          [`(,op (var ,read) (var ,writ)) #:when (or (equal? op `movq) (equal? op `movzbq))
                                          (set! sets (cons (live-after-set (set read) (set writ) (car sets)) sets))
                                          (set! new-instrs (cons instr new-instrs))]
          [`(movq (,type ,x) (var ,writ)) (set! sets (cons (live-after-set (set) (set writ) (car sets)) sets))
                                          (set! new-instrs (cons instr new-instrs))]
          [`(,op (var ,read) (,type ,writ)) (set! sets (cons (live-after-set (set read) (set) (car sets)) sets))
                                            (set! new-instrs (cons instr new-instrs))]
          [`(,op (function-ref ,read) (,type ,writ))
           (set! sets (cons (live-after-set (set) (set writ) (car sets)) sets))
           (set! new-instrs (cons instr new-instrs))]
          [`(indirect-callq (,type ,read)) (set! sets (cons (live-after-set (set read) (set) (car sets)) sets))
                                           (set! new-instrs (cons instr new-instrs))]
          [`(,op (,type ,read) (var ,writ)) (set! sets (cons (live-after-set (set) (set writ) (car sets)) sets))
                                            (set! new-instrs (cons instr new-instrs))]
          ; handling deref r11 arg
          [`(,op (var ,read) (,type ,reg ,arg)) (set! sets (cons (live-after-set (set read) (set) (car sets)) sets))
                                                (set! new-instrs (cons instr new-instrs))]
          [`(,op (,type ,reg ,arg) (var ,writ)) (set! sets (cons (live-after-set (set) (set writ) (car sets)) sets))
                                                (set! new-instrs (cons instr new-instrs))]
          [`(if ,cnd ,thns ,elss) (define-values (thns-sets thns-instrs) (get-set-of-vars-from-instructions thns (car sets)))
                                  (define-values (elss-sets elss-instrs) (get-set-of-vars-from-instructions elss (car sets)))
                                  (define new-instr `(if ,cnd ,thns-instrs ,thns-sets ,elss-instrs ,elss-sets))
                                  (define cnd-set (match cnd [`(,op (,type1 ,val1) (,type2 ,val2)) (cond [(and (equal? type1 `var) (equal? type2 `var)) (set val1 val2)]
                                                                                                         [(equal? type1 `var) (set val1)]
                                                                                                         [(equal? type2 `var ) (set val2)]
                                                                                                         [else (set)])]))
                                  (set! sets (cons (set-union cnd-set (car thns-sets) (car elss-sets)) sets))
                                  (set! new-instrs (cons new-instr new-instrs))]
          [`(,op (var ,read-writ)) (set! sets (cons (car sets) sets))
                                   (set! new-instrs (cons instr new-instrs))]
          [`(callq ,name) (set! sets (cons (car sets) sets))
                          (set! new-instrs (cons instr new-instrs))]
          [else ;(displayln "not matched in uncover-live") (displayln instr) (displayln "")
                (set! sets (cons (car sets) sets))
                (set! new-instrs (cons instr new-instrs))])))
  (values sets new-instrs))

;;; End Uncover-Live ;;;