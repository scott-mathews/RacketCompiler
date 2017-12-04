#lang racket

(require "../utilities.rkt")

; export constants
(provide cmp-syms bool-syms-biadic bool-syms-monadic
         arith-syms-biadic arith-syms-monadic vector-syms
         other-syms built-ins type-predicates)

(provide arg-reg-list)

;;;;;;;;;;;;;
; Constants ;
;;;;;;;;;;;;;

(define type-predicates
  (set `boolean? `integer? `vector? `procedure?))

; Symbols for our language
(define cmp-syms '(< > <= >= eq?))
(define bool-syms-biadic '(and or))
(define bool-syms-monadic '(not))
(define arith-syms-biadic '(+))
(define arith-syms-monadic '(-))
(define vector-syms '(vector-set! vector-ref vector))
(define other-syms '(read void))
(define built-ins (list->set (append cmp-syms bool-syms-biadic arith-syms-biadic arith-syms-monadic bool-syms-monadic vector-syms other-syms)))

; Registers

; Argument registers
; (same as arg-registers but a list instead of vector)
(define arg-reg-list (vector->list arg-registers))