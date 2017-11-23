#lang racket

(require racket/pretty)

(require "../utilities.rkt")

(provide my-compiler-tests my-run-tests)

; given a test-family (e.g. r3) and list of test-nums (e.g. (range 1 39))
; return a properly formatted program in our language from each identified
; file. (e.g. r3_1.rkt -> '(program ...))
; tests prefix should be left as "" unless you need to traverse another director
; to find the tests folder (e.g. "../")
(define (load-test-programs test-family test-nums tests-prefix)
  (define tests '())
  ; iterate through each test-num
  (for ([test-number (in-list test-nums)])
    (define test-name (format "~a_~a" test-family test-number))
    (define test-program (read-program (string-append tests-prefix "tests/" test-name ".rkt")))
    (set! tests (cons test-program tests))
    )
  (reverse tests)
  )

; Given a list of passes and a program, runs the passes on the program
; printing the input to each pass along the way.
(define (my-compiler-tests passes program . rest)
  (define terminal-pass (if (not (equal? rest '()))
                            (car rest)
                            "print-x86"))
  (define continue? #t)
  (while continue?
         (displayln (string-append "Running Pass: " (first (car passes)) " on:\n" (format "~a" program)))
         (displayln "|\nv\n")
         (set! program ((second (car passes)) program))
         (set! passes (cdr passes))
         (if (and (not (equal? '() passes)) (not (equal? (first passes) terminal-pass)))
             "pass"
             (set! continue? #f)))
  (pretty-display program))

; Given some passes, run those passes on the tests indicated by test-family
; and test-nums
(define (my-run-tests passes test-family test-nums tests-prefix . rest)
  (define programs (load-test-programs test-family test-nums tests-prefix))
  (for ([program programs])
    (if (not (equal? '() rest))
        (my-compiler-tests passes program (first rest))
        (my-compiler-tests passes program))
    )
  )