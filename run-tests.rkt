#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")
(require "compiler.rkt")

;; (debug-level 3)

(interp-tests "integers and arithmetic" #f r0-passes interp-scheme "r0" (range 1 5))
(interp-tests "uniquify" #f uniquify-passes interp-scheme "ex3" (range 1 5))
(display "tests passed!") (newline)
