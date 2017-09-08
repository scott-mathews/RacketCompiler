#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")
(require "compiler.rkt")

(debug-level 3)

;(interp-tests "integers and arithmetic" #f r0-passes interp-scheme "r0" (range 1 5))
(interp-tests "uniquify" #f uniquify-pass interp-scheme "ex3" (range 1 5))
(interp-tests "flatten" #f flatten-pass interp-scheme "r1" (range 1 15))
;(compiler-tests "r1-compiler" #f r1-passes "ex3" (range 1 5))
(display "tests passed!") (newline)
