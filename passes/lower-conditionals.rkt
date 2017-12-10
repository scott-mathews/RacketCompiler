#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")
(require "../utilities/constants.rkt")

(provide lower-conditionals)

;;; === Lower Conditionals === ;;;

(define (lower-conditionals exp)
  (match exp

    ;;;;;;;;;;;;;;;;
    ; Lower Whiles ;
    ;;;;;;;;;;;;;;;;
    [`(while ,cnds ,instrs)
     (define startlabel (gensym 'startwhile))
     (define endlabel (gensym 'endwhile))

     `((label ,startlabel)
       ,@(map-me lower-conditionals cnds)
       (jmp-if ,(cmp->cc `eq?) ,endlabel)
       ,@(map-me lower-conditionals instrs)
       (jmp ,startlabel)
       (label ,endlabel))]

    ;;;;;;;;;;;;;
    ; Lower Ifs ;
    ;;;;;;;;;;;;;
    [`(if (,cmp ,arg1 ,arg2) ,thns ,elss) (define thnlabel (gensym `then))
                                          (define endlabel (gensym `end))
                                          `((cmpq ,arg2 ,arg1)
                                            (jmp-if ,(cmp->cc cmp) ,thnlabel)
                                            ,@(map-me lower-conditionals elss)
                                            (jmp ,endlabel)
                                            (label ,thnlabel)
                                            ,@(map-me lower-conditionals thns)
                                            (label ,endlabel))]
    [`(define (,name) (,regn ,rootn ,maxstack) ,instrs ...)
     (list `(define (,name) (,regn ,rootn ,maxstack) ,@(values (map-me lower-conditionals instrs))))]
    [`(program (,regn ,rootn) ,type (defines ,defs ...) ,instrs ...)
     `(program (,regn ,rootn) ,type (defines ,@(values (map-me lower-conditionals defs))) ,@(values (map-me lower-conditionals instrs)))]
    [else `(,exp)]))

;;; End Lower Conditionals ;;;