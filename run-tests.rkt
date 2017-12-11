#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")

(require "compiler.rkt")
(require "utilities/testing.rkt")

;(debug-level 2)
(define regression_tests_active #f)

; Compiler Tests
(if regression_tests_active
    (begin
      (compiler-tests "r1-compiler" (type-check '()) r6_passes "r1" (range 1 49))
      (compiler-tests "r2 compiler" (type-check '()) r6_passes "r2" (range 1 53))
      (compiler-tests "r3 compiler" (type-check '()) r6_passes "r3" (range 1 36))
      (compiler-tests "r4 compiler" (type-check '()) r6_passes "r4" (range 1 39))
      (compiler-tests "r5 compiler" (type-check '()) r6_passes "r5" (range 1 13))
      
      ; Test 2 omitted (it correctly throws an error)
      (compiler-tests "r6 compiler" (type-check '()) r6_passes "s6" (append (list 0 1) (range 3 11) (list 50)))
      (compiler-tests "r7 compiler" #f r7_passes "r7" (range 1 22)))
    (void))

(compiler-tests "project compiler" #f r7_passes "final" (range 0 23))


;(my-run-tests r7_passes "while" (range 2 3) "" "print-x86")

(display "tests passed!") (newline)
