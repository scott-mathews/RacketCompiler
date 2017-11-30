#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")

(provide uncover-live)

; Builds a live-after set for each instruction in a program
(define (uncover-live prog)
  (match prog
    [`(program (,vars ...) ,type (defines ,defs ...) ,instrs ...)
     (define-values (new-instrs live-afters) (uncover-instrs instrs (set)))
     `(program (,vars ,live-afters) ,type (defines ,@(map uncover-live-def defs)) ,@new-instrs)]))

(define (uncover-live-def def)
  (match def
    [`(define (,name) ((,vars ...) ,max-stack) ,instrs ...)
     (define-values (new-instrs live-afters) (uncover-instrs instrs (set)))
     `(define (,name) (,vars ,live-afters ,max-stack) ,@new-instrs)]))

; Iterates through a list of instructions, building up the live-after sets and the new instructions
; for that list of instructions
(define (uncover-instrs instrs initial-set)
  (define new-instrs '())
  (define live-afters `(,initial-set))
  ; iterate through the instructions bottom up
  (for ([instr (reverse instrs)])
    ; Get a new instruction and a live-after set based on an old instruction and the last live-after set
    (define-values (new-instr live-after) (uncover-instr instr (car live-afters)))
    (set! new-instrs (cons new-instr new-instrs))
    (set! live-afters (cons live-after live-afters)))
  (values new-instrs live-afters))

; 
(define (uncover-instr instr last-live-after)
  (match instr
    [`(if ,cnd (,thns ...) (,elss ...))
     (define-values (instrs-thns live-after-thns) (uncover-instrs thns last-live-after))
     (define-values (instrs-elss live-after-elss) (uncover-instrs elss last-live-after))
     (define-values (instr-cnd live-after-cnd) (uncover-instr cnd (set-union (car live-after-elss) (car live-after-thns))))
     (values `(if ,instr-cnd ,instrs-thns ,live-after-thns ,instrs-elss ,live-after-elss)
             (set-union (car live-after-thns) (car live-after-elss) live-after-cnd))]

    ; Returns live-after for an (op args...) instruction
    [`(,op ,args ...)
     (match op
       [(? add-like-op?) ; addq, xorq, cmpq, cmp?
        (define read (set-union (get-arg (first args)) (get-arg (second args))))
        (define written (set))
        (values instr (make-live-before read written last-live-after))]
       
       [(? move-like-op?) ; movq, movzbq, leaq
        (define read (get-arg (first args)))
        (define written (get-arg (second args)))
        (values instr (make-live-before read written last-live-after))]
       
       [(? neg-like-op?) ; negq, indirect-callq
        (define read (get-arg (first args)))
        (define written (set))
        (values instr (make-live-before read written last-live-after))]

       ; Odd ones out
       [`callq
        (values instr last-live-after)]
       
       [`set
        (values instr last-live-after)]
       
       [else (error "Not matched in uncover-instr (,op ,args ...): ~a" op)])]
    [else (error "Not matched in uncover-instr: ~a" instr)]))

; Converts an arg to the set of variables for that arg
(define (get-arg arg)
  (match (first arg)
    [`var (set (second arg))]
    [`int (set)]
    [`deref (set)]
    [`byte-reg (set)]
    [`global-value (set)]
    [`reg (set)]
    [`function-ref (set)]
    [else (error "Not matched in get-arg (uncover-live): ~a" (first arg))]))

; Using the set of read and written args and the previous live-after set, construct
; a new live-after set for an instruction
(define (make-live-before read written last-live-after)
  (set-union (set-subtract last-live-after written) read))