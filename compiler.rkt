#lang racket

; Import Built-In Libraries
(require racket/fixnum)
(require racket/trace)

; Import Provided Libraries
(require "interp.rkt")
(require "utilities.rkt")
(require "utilities/testing.rkt")

; Import Passes
(require "passes/uniquify-r8.rkt")
(require "passes/box-mutations.rkt")
(require "passes/convert-r7.rkt")
(require "passes/typecheck.rkt")
(require "passes/uniquify.rkt")
(require "passes/reveal-functions.rkt")
(require "passes/convert-closures-new.rkt")
(require "passes/expose-allocation-new.rkt")
(require "passes/flatten-new.rkt")
(require "passes/select-instructions-new.rkt")
(require "passes/uncover-live-new.rkt")
(require "passes/build-interference-new.rkt")
(require "passes/allocate-registers-new.rkt")
(require "passes/assign-homes-new.rkt")
(require "passes/lower-conditionals.rkt")
(require "passes/patch-instructions-new.rkt")
(require "passes/print-x86.rkt")

; Provide Passes
(provide uniquify-pass flatten-pass select-instructions-pass
         allocate-registers-pass patch-instructions-pass type-check
         lower-conditionals-pass r5_passes expose-allocation-pass
         reveal-functions-pass r3_passes r4_passes r6_passes
         r7_passes)

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
     ("assign-homes" ,assign-homes ,interp-x86)
     ))

(define lower-conditionals-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("expose-allocation" ,expose-allocation ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,assign-homes ,interp-x86)
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
     ("assign-homes" ,assign-homes ,interp-x86)
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
     ("assign-homes" ,assign-homes ,interp-x86)
     ("lower-conditionals" ,lower-conditionals ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)
     ))

(define r5_passes
  `( ("uniquify"            ,(uniquify '())         ,interp-scheme)
     ("reveal functions"    ,(reveal-functions '()) ,interp-scheme)
     ("convert-closures"    ,convert-closures       ,interp-scheme)
     ("expose-allocation"   ,expose-allocation      ,interp-scheme)
     ("flatten"             ,flatten                ,interp-C)
     ("select-instructions" ,select-instructions    ,interp-x86)
     ("uncover-live"        ,uncover-live           ,interp-x86)
     ("build-interference"  ,build-interference     ,interp-x86)
     ("allocate-registers"  ,allocate-registers     ,interp-x86)
     ("assign-homes"        ,assign-homes           ,interp-x86)
     ("lower-conditionals"  ,lower-conditionals     ,interp-x86)
     ("patch-instructions"  ,patch-instructions     ,interp-x86)
     ("print-x86"           ,print-x86              ,interp-x86)))

(define r3_passes r5_passes)
(define r4_passes r5_passes)
(define r6_passes r5_passes)

(define r7_passes
  `(("uniquify-r8"         ,uniquify-r8            ,interp-scheme)
    ("box-mutations"       ,box-mutations          ,interp-scheme)
    ("convert-r7"          ,convert-r7             ,interp-scheme)
    ("type-check"          ,(type-check '())       ,interp-scheme)
    ("reveal functions"    ,(reveal-functions '()) ,interp-scheme)
    ("convert-closures"    ,convert-closures       ,interp-scheme)
    ("expose-allocation"   ,expose-allocation      ,interp-scheme)
    ("flatten"             ,flatten                ,interp-C)
    ("select-instructions" ,select-instructions    ,interp-x86)
    ("uncover-live"        ,uncover-live           ,interp-x86)
    ("build-interference"  ,build-interference     ,interp-x86)
    ("allocate-registers"  ,allocate-registers     ,interp-x86)
    ("assign-homes"        ,assign-homes           ,interp-x86)
    ("lower-conditionals"  ,lower-conditionals     ,interp-x86)
    ("patch-instructions"  ,patch-instructions     ,interp-x86)
    ("print-x86"           ,print-x86              ,interp-x86))
  )
