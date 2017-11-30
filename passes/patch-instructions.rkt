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

    
    ;[`(cmpq (,type ,val) (int ,n)) (list `(movq (int ,n) (reg rax))
    ;                                     `(cmpq (,type ,val) (reg rax)))]
    [`(cmpq ,arg1 ,arg2) #:when (and (equal? (first arg1) `deref) (equal? (first arg2) `deref))
                         (list `(movq ,arg1 (reg rax))
                               `(cmpq (reg rax) ,arg2))]
    [`(cmpq ,arg1 ,arg2) #:when (equal? (first arg2) `int)
                         (list `(movq ,arg2 (reg rax))
                               `(cmpq ,arg1 (reg rax)))]
    ;[`(cmpq ,arg1 ,arg2) #:when (equal? (first arg1) `int)
    ;                     (list `(movq ,arg1 (reg rax))
    ;                           `(cmpq (reg rax) ,arg2))]

    
    [`(movzbq ,arg1 ,arg2) #:when (equal? (first arg2) `deref)
                          (list `(movzbq ,arg1 (reg rax))
                                `(movq (reg rax) ,arg2))]
    [`(leaq (function-ref ,label) (deref ,reg ,n)) (list `(leaq (function-ref ,label) (reg rax))
                                                         `(movq (reg rax) (deref ,reg ,n)))]
    [`(define (,name) ,l ((,regn ,rootn) ,maxstack) ,instrs ...)
     (list `(define (,name) ,l ((,regn ,rootn) ,maxstack) ,@(values (map-me patch-instructions instrs))))]
    [`(program (,regn ,rootn) ,type (defines ,defs ...) ,instrs ...)
     `(program (,regn ,rootn) ,type (defines ,@(values (map-me patch-instructions defs))) ,@(values (map-me patch-instructions instrs)))]
    [`(define (,name) (,regn ,rootn ,max-stack) ,instrs ...)
     `(define (,name) (,regn ,rootn ,max-stack) ,@(values (map-me patch-instructions instrs)))]
    ;[`(indirect-callq (deref ,reg ,n)) (list `(movq (deref ,reg ,n) (reg rax))
    ;                                         `(indirect-callq (reg rax)))]
    [else `(,exp)] 
    ))

;;; End Patch Instructions ;;;