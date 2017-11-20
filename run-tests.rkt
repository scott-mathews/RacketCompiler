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
;(interp-tests "partial evaluator" (type-check '()) pe-arith-pass interp-scheme "r1" (range 1 49))
;(interp-tests "uniquify" (type-check '()) uniquify-pass interp-scheme "r1" (range 1 49))
;(interp-tests "reveal-functions" (type-check '()) reveal-functions-pass interp-scheme "r1" (range 1 49))
;(interp-tests "expose-allocation" (type-check '()) expose-allocation-pass interp-scheme "r1" (range 1 49))
;(interp-tests "flatten" (typecheck-R3 '()) flatten-pass interp-scheme "r1" (range 2 3))
;(interp-tests "select instructions" (typecheck-R3 '()) select-instructions-pass interp-scheme "r1" (range 1 49))
;(interp-tests "allocate registers" (typecheck-R3 '()) allocate-registers-pass interp-scheme "r1" (range 1 49))
;(interp-tests "patch instructions" (type-check '()) patch-instructions-pass interp-scheme "r1" (range 1 49))
;(compiler-tests "r1-compiler" (type-check '()) r1-passes "r1" (range 1 49))

;;; === R2 Tests === ;;;
;(interp-tests "uniquify" (type-check '()) uniquify-pass interp-scheme "r2" (range 1 53))
;(interp-tests "expose-allocation" (type-check '()) expose-allocation-pass interp-scheme "r2" (range 1 23))
;(interp-tests "flatten" (typecheck-R3 '()) flatten-pass interp-scheme "r2" (range 1 23))
;(interp-tests "select instructions" (typecheck-R3 '()) select-instructions-pass interp-scheme "r2" (range 1 23))
;(interp-tests "allocate registers" (typecheck-R3 '()) allocate-registers-pass interp-scheme "r2" (range 1 23))
;(interp-tests "lower conditionals" (typecheck-R3 '()) lower-conditionals-pass interp-scheme "r2" (range 1 23))
;(interp-tests "patch instructions" (type-check '()) patch-instructions-pass interp-scheme "r2" (range 1 23))
;(compiler-tests "r2 compiler" (type-check '()) r2-passes "r2" (range 1 53))

;;; === R3 Tests === ;;;
;(interp-tests "partial evaluator" (typecheck-R3 '()) pe-arith-pass interp-scheme "r3" (range 1 36))
;(interp-tests "uniquify" (type-check '()) uniquify-pass interp-scheme "r3" (range 1 37))
;(interp-tests "expose-allocation" (type-check '()) expose-allocation-pass interp-scheme "r3" (range 1 37))
;(interp-tests "flatten" (typecheck-R3 '()) flatten-pass interp-scheme "r3" (range 1 37))
;(interp-tests "select instructions" (typecheck-R3 '()) select-instructions-pass interp-scheme "r3" (range 1 37))
;(interp-tests "allocate-registers" (typecheck-R3 '()) allocate-registers-pass interp-scheme "r3" (range 1 37))
;(interp-tests "lower conditionals" (type-check '()) lower-conditionals-pass interp-scheme "r3" (range 1 37))
;(interp-tests "patch instructions" (type-check '()) patch-instructions-pass interp-scheme "r3" (range 1 37))
(compiler-tests "r3 compiler" (type-check '()) r3-passes "r3" (range 1 37))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; New Tests ;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;

;;; === R4 Tests === ;;;
;(interp-tests "uniquify" (type-check '()) uniquify-pass interp-R4 "r4" (range 1 39))


(display "tests passed!") (newline)
