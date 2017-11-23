#lang racket

; Import Built-In Libraries
(require racket/fixnum)
(require racket/trace)

; Import Provided Libraries
(require "../interp.rkt")
(require "../utilities.rkt")
(require "../utilities/testing.rkt")

; Import Passes
(require "typecheck.rkt")
(require "uniquify.rkt")
(require "reveal-functions.rkt")
(require "expose-allocation.rkt")
(require "flatten.rkt")
(require "select-instructions.rkt")
(require "uncover-live.rkt")
(require "build-interference.rkt")
(require "allocate-registers.rkt")
(require "assign-homes.rkt")
(require "lower-conditionals.rkt")
(require "patch-instructions.rkt")
(require "print-x86.rkt")

; Provide Passes
(provide uniquify-pass flatten-pass select-instructions-pass
         allocate-registers-pass patch-instructions-pass type-check
         lower-conditionals-pass r4-passes expose-allocation-pass
         reveal-functions-pass passes)

;; Define the passes to be used by interp-tests and the grader
;; Note that your compiler file (or whatever file provides your passes)
;; should be named "compiler.rkt"

(define uniquify-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ))

(define reveal-functions-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("reveal functions" ,(reveal-functions '()) ,interp-scheme)
     ))

(define expose-allocation-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("expose-allocation" ,expose-allocation ,interp-scheme)
     ))

(define flatten-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("expose-allocation" ,expose-allocation ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ))

(define select-instructions-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("expose-allocation" ,expose-allocation ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ))

(define allocate-registers-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("expose-allocation" ,expose-allocation ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '() '()) ,interp-x86)
     ))

(define lower-conditionals-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("expose-allocation" ,expose-allocation ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '() '()) ,interp-x86)
     ("lower-conditionals" ,lower-conditionals ,interp-x86)
     ))

(define patch-instructions-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("expose-allocation" ,expose-allocation ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '() '()) ,interp-x86)
     ("lower-conditionals" ,lower-conditionals ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ))

(define print-x86-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("expose-allocation" ,expose-allocation ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '() '()) ,interp-x86)
     ("lower-conditionals" ,lower-conditionals ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)
     ))

(define r4-passes
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("reveal functions" ,(reveal-functions '()) ,interp-scheme)
     ("expose-allocation" ,expose-allocation ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '() '()) ,interp-x86)
     ("lower-conditionals" ,lower-conditionals ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)
     ))

(define passes
  (cons `("type-check" ,(type-check '()) ,interp-scheme) r4-passes))
