#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")

(require "compiler.rkt")
(require "utilities/testing.rkt")

;(debug-level 2)

;;;;;;;;;;;;;;;;;;;;;;;;
;;; Regression Tests ;;;
;;;;;;;;;;;;;;;;;;;;;;;;

;;; === R1 Tests === ;;;
;(interp-tests "partial evaluator" (type-check '()) pe-arith-pass interp-scheme "r1" (range 1 49))
;(interp-tests "uniquify" (type-check '()) uniquify-pass interp-scheme "r1" (range 1 49))
;(interp-tests "reveal-functions" (type-check '()) reveal-functions-pass interp-scheme "r1" (range 1 49))
;(interp-tests "expose-allocation" (type-check '()) expose-allocation-pass interp-scheme "r1" (range 1 49))
;(interp-tests "flatten" (typecheck-R3 '()) flatten-pass interp-scheme "r1" (range 2 3))
;(interp-tests "select instructions" (typecheck-R3 '()) select-instructions-pass interp-scheme "r1" (range 1 49))
;(interp-tests "allocate registers" (type-check '()) allocate-registers-pass interp-scheme "r1" (range 1 49))
;(interp-tests "patch instructions" (type-check '()) patch-instructions-pass interp-scheme "r1" (range 36 37))
;(compiler-tests "r1-compiler" (type-check '()) r5-passes "r1" (range 1 49))
;(my-run-tests passes "r2" (range 1 2) "")

;;; === R2 Tests === ;;;
;(interp-tests "uniquify" (type-check '()) uniquify-pass interp-scheme "r2" (range 1 53))
;(interp-tests "expose-allocation" (type-check '()) expose-allocation-pass interp-scheme "r2" (range 1 23))
;(interp-tests "flatten" (typecheck-R3 '()) flatten-pass interp-scheme "r2" (range 1 23))
;(interp-tests "select instructions" (typecheck-R3 '()) select-instructions-pass interp-scheme "r2" (range 1 23))
;(interp-tests "allocate registers" (typecheck-R3 '()) allocate-registers-pass interp-scheme "r2" (range 1 23))
;(interp-tests "lower conditionals" (typecheck-R3 '()) lower-conditionals-pass interp-scheme "r2" (range 1 23))
;(interp-tests "patch instructions" (type-check '()) patch-instructions-pass interp-scheme "r2" (range 1 23))
;(compiler-tests "r2 compiler" (type-check '()) r5-passes "r2" (range 1 53))
;(my-run-tests passes "r2" (range 28 29) "")

;;; === R3 Tests === ;;;
;(interp-tests "partial evaluator" (typecheck-R3 '()) pe-arith-pass interp-scheme "r3" (range 1 36))
;(interp-tests "uniquify" (type-check '()) uniquify-pass interp-scheme "r3" (range 1 37))
;(interp-tests "expose-allocation" (type-check '()) expose-allocation-pass interp-scheme "r3" (range 1 37))
;(interp-tests "flatten" (typecheck-R3 '()) flatten-pass interp-scheme "r3" (range 1 37))
;(interp-tests "select instructions" (typecheck-R3 '()) select-instructions-pass interp-scheme "r3" (range 1 37))
;(interp-tests "allocate-registers" (typecheck-R3 '()) allocate-registers-pass interp-scheme "r3" (range 1 37))
;(interp-tests "lower conditionals" (type-check '()) lower-conditionals-pass interp-scheme "r3" (range 1 37))
;(interp-tests "patch instructions" (type-check '()) patch-instructions-pass interp-scheme "r3" (range 50 51))
;(compiler-tests "r3 compiler" (type-check '()) r5-passes "r3" (range 1 37))
;(my-run-tests passes "r3" (range 50 51) "")

;;; === R4 Tests === ;;;
;(interp-tests "partial evaluator" (typecheck-R3 '()) pe-arith-pass interp-scheme "r3" (range 1 36))
;(interp-tests "uniquify" (type-check '()) uniquify-pass interp-scheme "r3" (range 1 37))
;(interp-tests "expose-allocation" (type-check '()) expose-allocation-pass interp-scheme "r3" (range 1 37))
;(interp-tests "flatten" (typecheck-R3 '()) flatten-pass interp-scheme "r3" (range 1 37))
;(interp-tests "select instructions" (typecheck-R3 '()) select-instructions-pass interp-scheme "r3" (range 1 37))
;(interp-tests "allocate-registers" (typecheck-R3 '()) allocate-registers-pass interp-scheme "r3" (range 1 37))
;(interp-tests "lower conditionals" (type-check '()) lower-conditionals-pass interp-scheme "r3" (range 1 37))
;(interp-tests "patch instructions" (type-check '()) patch-instructions-pass interp-scheme "r4" (range 1 39))
;(compiler-tests "r4 compiler" (type-check '()) r5-passes "r4" (range 1 39));
;(my-run-tests passes "r4" (range 6 7) "")

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; New Tests ;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;

;;; === R5 Tests === ;;;
;(interp-tests "uniquify" (type-check '()) uniquify-pass interp-R4 "r5" (range 1 23))
(compiler-tests "r5 compiler" (type-check '()) r5-passes "r5" (range 1 14))
;(my-run-tests passes "r5" (range 1 14) "" "flatten")

(display "tests passed!") (newline)
