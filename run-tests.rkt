#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")

(require "compiler.rkt")
(require "utilities/testing.rkt")

;(debug-level 2)
(define regression_tests_active #t)

; Compiler Tests
(if regression_tests_active
    (begin
      (compiler-tests "r1-compiler" (type-check '()) r5_passes "r1" (range 1 49))
      (compiler-tests "r2 compiler" (type-check '()) r5_passes "r2" (range 1 53))
      (compiler-tests "r3 compiler" (type-check '()) r3_passes "r3" (range 1 37))
      (compiler-tests "r4 compiler" (type-check '()) r4_passes "r4" (range 1 39))
      (compiler-tests "r5 compiler" (type-check '()) r5_passes "r5" (range 1 14))
      )
    (void))

(compiler-tests "r6 compiler" (type-check '()) r6_passes "s6" (append (list 1) (range 3 11)))
;(my-run-tests passes "s6" (range 1 2) "" "select-instructions")
;(my-run-tests passes "r1" (range 5 6) "" "uniquify")

(display "tests passed!") (newline)
