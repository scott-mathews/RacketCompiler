#lang racket

(require "../utilities/helpers.rkt")

(provide patch-instructions)

(define (patch-instructions program)
  (match program
    [`(program (,regn ,rootn) ,type (defines ,defs ...) ,instrs ...)

     ; Patch instructions
     (define patched-instrs (foldr append '() (map patch instrs)))

     ; Remove unnecessary instructions
     (define cleaned-instrs (remove-duplicate-instrs (remove-swapping-instrs patched-instrs)))
     
     `(program (,regn ,rootn) ,type (defines ,@(map patch-instructions-define defs)) ,@cleaned-instrs)]))

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Removing Duplicate Instructions ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Remove instructions such as
; (movq (reg 1) (reg 1))
(define (remove-duplicate-instrs instrs)
  (foldr append '()
         (map (lambda (instr)
                (match instr
                  [`(movq ,arg1 ,arg2)
                   (if (equal? arg1 arg2)
                       '()
                       (list instr))]
                  [else (list instr)])) instrs)))


; Remove instruction sequences such as
; (movq (reg 1) (reg 2))
; (movq (reg 2) (reg 1))
(define (remove-swapping-instrs instrs)
  (foldr dropping-append '() instrs))

(define (dropping-append instr-top rest)
  (match instr-top
    [`(movq ,arg1 ,arg2)
     (if (not (equal? '() rest))
         (match (first rest)
           [`(movq ,arg3 ,arg4)
            (if (and (equal? arg1 arg4) (equal? arg3 arg2))
                (cons instr-top (cdr rest))
                (cons instr-top rest))]
           [else (cons instr-top rest)])
         (cons instr-top rest))]
    [else (cons instr-top rest)]))