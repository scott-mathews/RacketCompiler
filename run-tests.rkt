#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")

(require "compiler.rkt")
(require "utilities/testing.rkt")

;(debug-level 2)
(define regression_tests_active #f)
(define future_tests_active #t)

; Compiler Tests
(if regression_tests_active
    (begin
      (compiler-tests "r1-compiler" (type-check '()) r5_passes "r1" (range 1 49))
      (compiler-tests "r2 compiler" (type-check '()) r5_passes "r2" (range 1 53))
      (compiler-tests "r3 compiler" (type-check '()) r5_passes "r3" (range 1 36))
      (compiler-tests "r4 compiler" (type-check '()) r5_passes "r4" (range 1 39))
      (compiler-tests "r5 compiler" (type-check '()) r5_passes "r5" (range 1 13))
      
      ; Test 2 omitted (it correctly throws an error)
      (compiler-tests "r6 compiler" (type-check '()) r6_passes "s6" (append (list 0 1) (range 3 11) (list 50)))
      (compiler-tests "r7 compiler" #f r7_passes "r7" (range 1 22))
      
      
      )
    (void))

(if future_tests_active
    (begin
      (compiler-tests "begin compiler" #f r7_passes "begin" (range 0 6))
      (compiler-tests "while compiler" #f r7_passes "while" (range 0 3))
      (compiler-tests "set! compiler" #f r7_passes "set" (range 0 8))
      )
    (void))

;(my-run-tests r7_passes "while" (range 2 3) "" "print-x86")

(display "tests passed!") (newline)
