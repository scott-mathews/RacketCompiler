#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")
(require "compiler.rkt")

(debug-level 2)

;;; === R1 Tests === ;;;
;(interp-tests "integers and arithmetic" #f r0-passes interp-scheme "r0" (range 1 5))
;(interp-tests "partial evaluator" #f pe-arith-pass interp-scheme "ex3" (range 1 5))
;(interp-tests "uniquify" #f uniquify-pass interp-scheme "r1" (range 1 24))
;(interp-tests "flatten" #f flatten-pass interp-scheme "r1" (range 1 24))
;(interp-tests "select instructions" #f select-instructions-pass interp-scheme "r1" (range 1 39))
;(interp-tests "allocate registers" #f allocate-registers-pass interp-scheme "r1" (range 1 39))
;(interp-tests "patch instructions" (typecheck-R2 '()) patch-instructions-pass interp-scheme "r1" (range 1 41))
;(compiler-tests "r1-compiler" (typecheck-R2 '()) r1-passes "r1" (range 1 41))

;;; === R2 Tests === ;;;
;(interp-tests "uniquify" (typecheck-R2 '()) uniquify-pass interp-scheme "r2" (range 1 23))
(interp-tests "flatten" (typecheck-R2 '()) flatten-pass interp-scheme "r2" (range 16 23))
;(interp-tests "select instructions" (typecheck-R2 '()) select-instructions-pass interp-scheme "r2" (range 1 23))
;(interp-tests "allocate registers" (typecheck-R2 '()) allocate-registers-pass interp-scheme "r2" (range 1 23))
;(interp-tests "lower conditionals" (typecheck-R2 '()) lower-conditionals-pass interp-scheme "r2" (range 1 23))
;(interp-tests "patch instructions" (typecheck-R2 '()) patch-instructions-pass interp-scheme "r2" (range 1 23))
;(compiler-tests "r2 compiler" (typecheck-R2 '()) r2-passes "r2" (range 1 23))

(display "tests passed!") (newline)
