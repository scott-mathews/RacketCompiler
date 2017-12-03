#lang racket

;;;;;;;;;;;;;
; Add Injects and Projects ;
;;;;;;;;;;;;;

(define (r7->r6 program)
  (match program
    [`(program ,exps)
     ; Extract defines and body from program form
     (define body (last exps))
     (define defs (reverse (cdr (reverse exps))))
     
     ]))