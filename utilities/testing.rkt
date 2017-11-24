#lang racket

(require racket/pretty)
(require racket/exn)

(require "../utilities.rkt")

(provide my-compiler-tests my-run-tests)

; given a test-family (e.g. r3) and list of test-nums (e.g. (range 1 39))
; return a properly formatted program in our language from each identified
; file. (e.g. r3_1.rkt -> '(program ...))
; tests prefix should be left as "" unless you need to traverse another director
; to find the tests folder (e.g. "../")
(define (load-test-programs test-family test-nums tests-prefix)
  (define tests '())
  (define used-nums '())
  ; iterate through each test-num
  (for ([test-number (in-list test-nums)])
    (define test-name (format "~a_~a" test-family test-number))
    (if (file-exists? (string-append tests-prefix "tests/" test-name ".rkt"))
        (let ()
          (define test-program (read-program (string-append tests-prefix "tests/" test-name ".rkt")))
          (define type-error-expected (file-exists? (format "tests/~a.tyerr" test-name)))
          (set! tests (cons (cons test-program type-error-expected) tests))
          (set! used-nums (cons test-number used-nums)))
        "there is not file for that test, so skip!"))
  (values (reverse tests) (reverse used-nums))
  )

; Given a list of passes and a program, runs the passes on the program
; printing the input to each pass along the way.
(define (my-compiler-tests passes program . rest)
  (define terminal-pass (if (not (equal? rest '()))
                            (car rest)
                            "print-x86"))
  (define continue? #t)
  (while continue?
         (displayln (string-append "Running Pass: " (first (car passes)) " on:\n"))
         (pretty-display program)
         (displayln "|\nv\n")
         (set! program ((second (car passes)) program))
         ;(displayln (string-append (first (car passes)) " : " terminal-pass " : " (boolean->string (equal? ))))
         (if (equal? (first (car passes)) terminal-pass)
             (set! continue? #f)
             "pass"
             )
         (set! passes (cdr passes))
         
         )
  (pretty-display program)
  (displayln "\n----------\n"))

; Given some passes, run those passes on the tests indicated by test-family
; and test-nums
(define (my-run-tests passes test-family test-nums tests-prefix . rest)
  (define-values (programs used-test-nums) (load-test-programs test-family test-nums tests-prefix))
  (for ([program programs] [test (in-list used-test-nums)])
    (displayln (format "Testing ~a_~a" test-family test))
    (if (cdr program)
        (with-handlers ([exn:fail? (lambda (exn) (displayln (string-append "Expected type error occurred: " (exn->string exn))) (displayln "\n----------\n"))])
          (if (not (equal? '() rest))
              (my-compiler-tests passes (car program) (first rest))
              (my-compiler-tests passes (car program))))
        (if (not (equal? '() rest))
              (my-compiler-tests passes (car program) (first rest))
              (my-compiler-tests passes (car program))))
    )
  )