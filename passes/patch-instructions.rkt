#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")
(require "../utilities/constants.rkt")

(provide patch-instructions)

;;; === Patch Instructions === ;;;

(define (patch-instructions exp)  
  (match exp
    [`(movq (global-value ,name) (deref ,reg ,n)) (list `(movq (global-value ,name) (reg rax))
                                                        `(movq (reg rax) (deref ,reg ,n)))]
    [`(addq (deref ,reg1 ,n1) (deref ,reg2 ,n2)) (list `(movq (deref ,reg1 ,n1) (reg rax)) 
                                                   `(addq (reg rax) (deref ,reg2 ,n2)))]
    [`(movq (deref ,reg1 ,n1) (deref ,reg2 ,n2)) (list `(movq (deref ,reg1 ,n1) (reg rax)) `(movq (reg rax) (deref ,reg2 ,n2)))]
    [`(cmpq (,type ,val) (int ,n)) (if (equal? type `int)
                                       (list `(movq (int ,n) (reg rax))
                                             `(cmpq (,type ,val) (reg rax)))
                                       (list `(cmpq (int ,n) (,type ,val))))]
    [`(leaq (function-ref ,label) (deref ,reg ,n)) (list `(leaq (function-ref ,label) (reg rax))
                                                         `(movq (reg rax) (deref ,reg ,n)))]
    [`(define (,name) ,l ((,regn ,rootn) ,maxstack) ,instrs ...)
     (list `(define (,name) ,l ((,regn ,rootn) ,maxstack) ,@(values (map-me patch-instructions instrs))))]
    [`(program (,regn ,rootn) ,type (defines ,defs ...) ,instrs ...)
     `(program (,regn ,rootn) ,type (defines ,@(values (map-me patch-instructions defs))) ,@(values (map-me patch-instructions instrs)))]
    ;[`(indirect-callq (deref ,reg ,n)) (list `(movq (deref ,reg ,n) (reg rax))
    ;                                         `(indirect-callq (reg rax)))]
    [else `(,exp)] 
    ))

;;; End Patch Instructions ;;;