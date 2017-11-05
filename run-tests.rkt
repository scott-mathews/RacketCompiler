#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")
(require "compiler.rkt")

;(debug-level 2)

;;;;;;;;;;;;;;;;;;;;;;;;
;;; Regression Tests ;;;
;;;;;;;;;;;;;;;;;;;;;;;;

;;; === R1 Tests === ;;;
;; Confirmed R3 ;;
;(interp-tests "partial evaluator" (typecheck-R3 '()) pe-arith-pass interp-scheme "r1" (range 1 49))
;(interp-tests "uniquify" (typecheck-R3 '()) uniquify-pass interp-scheme "r1" (range 1 49))
;(interp-tests "expose-allocation" (typecheck-R3 '()) expose-allocation-pass interp-scheme "r1" (range 1 49))
;(interp-tests "flatten" (typecheck-R3 '()) flatten-pass interp-scheme "r1" (range 2 3))
;(interp-tests "select instructions" (typecheck-R3 '()) select-instructions-pass interp-scheme "r1" (range 1 49))

;; In Progress R3 ;;
;(interp-tests "allocate registers" (typecheck-R3 '()) allocate-registers-pass interp-scheme "r1" (range 1 49))
;(interp-tests "patch instructions" (typecheck-R3 '()) patch-instructions-pass interp-scheme "r1" (range 1 49))
;(compiler-tests "r1-compiler" (typecheck-R3 '()) r1-passes "r1" (range 1 49))

;;; === R2 Tests === ;;;
;(interp-tests "uniquify" (typecheck-R3 '()) uniquify-pass interp-scheme "r2" (range 1 23))
;(interp-tests "expose-allocation" (typecheck-R3 '()) expose-allocation-pass interp-scheme "r2" (range 1 23))
;(interp-tests "flatten" (typecheck-R3 '()) flatten-pass interp-scheme "r2" (range 1 23))
;(interp-tests "select instructions" (typecheck-R3 '()) select-instructions-pass interp-scheme "r2" (range 1 23))

;(interp-tests "allocate registers" (typecheck-R3 '()) allocate-registers-pass interp-scheme "r2" (range 1 23))
;(interp-tests "lower conditionals" (typecheck-R3 '()) lower-conditionals-pass interp-scheme "r2" (range 1 23))
;(interp-tests "patch instructions" (typecheck-R3 '()) patch-instructions-pass interp-scheme "r2" (range 1 23))
;(compiler-tests "r2 compiler" (typecheck-R3 '()) r2-passes "r2" (range 1 23))


;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; New Tests ;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;

;;; === R3 Tests === ;;;
;(interp-tests "partial evaluator" (typecheck-R3 '()) pe-arith-pass interp-scheme "r3" (range 1 36))
;(interp-tests "uniquify" (typecheck-R3 '()) uniquify-pass interp-scheme "r3" (range 36 37))
;(interp-tests "expose-allocation" (typecheck-R3 '()) expose-allocation-pass interp-scheme "r3" (range 23 24))
;(interp-tests "flatten" (typecheck-R3 '()) flatten-pass interp-scheme "r3" (range 1 37))
;(interp-tests "select instructions" (typecheck-R3 '()) select-instructions-pass interp-scheme "r3" (range 1 37))
;(interp-tests "allocate-registers" (typecheck-R3 '()) allocate-registers-pass interp-scheme "r3" (range 1 37))
;(interp-tests "lower conditionals" (typecheck-R3 '()) lower-conditionals-pass interp-scheme "r3" (range 1 37))
;(interp-tests "print x86" (typecheck-R3 '()) print-x86-pass interp-scheme "r3" (range 1 37))

(display "tests passed!") (newline)
