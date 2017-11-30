#lang racket

(require "../utilities/helpers.rkt")

(provide patch-instructions)

(define (patch-instructions program)
  (match program
    [`(program (,regn ,rootn) ,type (defines ,defs ...) ,instrs ...)
     `(program (,regn ,rootn) ,type (defines ,@(map patch-instructions-define defs)) ,@(foldr append '() (map patch instrs)))]))

(define (patch-instructions-define def)
  (match def
    [`(define (,name) (,regn ,rootn ,max-stack) ,instrs ...)
     `(define (,name) (,regn ,rootn ,max-stack) ,@(foldr append '() (map patch instrs)))]))

(define (patch instr)
  (match instr
    [`(,op ,arg1 ,arg2)
     (match op
       [(? move-like-op?) (cond
                            ; leaq cannot take a memory location as the second argument
                            [(and (equal? op `leaq) (memory-location? arg2))
                             `((,op ,arg1 (reg rax))
                               (movq (reg rax) ,arg2))]

                            ; move-like operations cannot have two memory locations
                            [(and (memory-location? arg1) (memory-location? arg2))
                             `((movq ,arg1 (reg rax))
                               (,op (reg rax) ,arg2))]
                            
                            ; movzbq cannot take a memory location as the second argument
                            [(and (equal? op `movzbq) (memory-location? arg2))
                             `((,op ,arg1 (reg rax))
                               (movq (reg rax) ,arg2))]

                            ; default case: instruction is unchanged
                            [else `(,instr)])]

       [(? add-like-op?) (cond
                           ; comparison cannot take a immediate value as the second argument
                           [(and (equal? op `cmpq) (immediate-value? arg2))
                            `((movq ,arg2 (reg rax))
                              (,op ,arg1 (reg rax)))]

                           ; add-like operations cannot have two memory locations
                           [(and (memory-location? arg1) (memory-location? arg2))
                            `((movq ,arg1 (reg rax))
                              (,op (reg rax) ,arg2))]

                           ; default case: instruction is unchanged
                           [else `(,instr)])]

       ; default case: instruction is unchanged
       [else `(,instr)])]

    ; default case: instruction is unchanged
    [else `(,instr)]))

(define (memory-location? arg)
  (match (first arg)
    [`deref #t]
    [`global-value #t]
    [`function-ref #t]
    [else #f]))

(define (immediate-value? arg)
  (match (first arg)
    [`int #t]
    [else #f]))