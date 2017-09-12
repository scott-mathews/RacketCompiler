#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")
(require "compiler.rkt")

(debug-level 1)

;(interp-tests "integers and arithmetic" #f r0-passes interp-scheme "r0" (range 1 5))
;(interp-tests "partial evaluator" #f pe-arith-pass interp-scheme "ex3" (range 1 5))
;(interp-tests "uniquify" #f uniquify-pass interp-scheme "r1" (range 1 24))
;(interp-tests "flatten" #f flatten-pass interp-scheme "r1" (range 1 24))
;(interp-tests "select instructions" #f select-instructions-pass interp-scheme "r1" (range 1 24))
;(interp-tests "assign homes" #f assign-homes-pass interp-scheme "r1" (range 1 15))
;(interp-tests "patch instructions" #f patch-instructions-pass interp-scheme "r1" (range 1 24))
(compiler-tests "r1-compiler" #f r1-passes "r1" (range 1 24))
(display "tests passed!") (newline)
