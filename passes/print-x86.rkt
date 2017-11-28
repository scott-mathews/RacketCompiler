#lang racket

(require "../utilities.rkt")
(provide print-x86)

;;; === Print x86 === ;;;
(define store "\tpushq %r14\n\tpushq %r13\n\tpushq %r12\n\tpushq %rbx\n")
(define restore "\tpopq %rbx\n\tpopq %r12\n\tpopq %r13\n\tpopq %r14\n")

(define root-store
  (lambda (m)
  (format
   (if (equal? (system-type) `windows)
       (string-append "\tmovq $~a, %rcx \n\tmovq $16, %rdx \n\tcallq initialize \n\tmovq rootstack_begin(%rip), %r15\n\taddq $~a, %r15\n" (set-0s (- m)) "\n")
       (string-append "\tmovq $~a, %rdi \n\tmovq $16, %rsi \n\tcallq initialize \n\tmovq rootstack_begin(%rip), %r15\n\taddq $~a, %r15\n" (set-0s (- m)) "\n"))
    16384 m)))

(define (fn-root-store rootstack-n)
          (format
           (string-append "\taddq $~a, %r15\n" (set-0s rootstack-n) "\n") (- rootstack-n)))

(define (set-0s n)
  (define result "")
  (while (< n 0)
         (set! result (string-append result (format "\tmovq $0, ~a(%r15)\n" n)))
         (set! n (+ n 8)))
  result)

(define intro
  (lambda (n m) (cond [(equal? (system-type) `macosx) (format (string-append "\t.globl _main\n_main:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n" store "\tsubq $~a, %rsp\n\n") (+ n 48))]
                    [else (format (string-append "\t.globl main\nmain:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n" store "\tsubq $~a, %rsp\n" (root-store m)) (+ n 48))])))

(define (fn-intro name stacksize rootstacksize argspills)
  (format (string-append "\t.globl ~a\n~a:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n"
                         store
                         "\tsubq $~a, %rsp\n"
                         (fn-root-store rootstacksize))
          name name (+ stacksize argspills)))
          ;name name (+ (+ stacksize argspills) 48)))

(define (print-result type)
  (print-by-type type))

(define conclusion
  (lambda (n m type) (cond [(equal? (system-type) `macosx) (format (string-append "\n\tmovq %rax, %rdi\n" (print-result type) "\tsubq $~a, %r15\n\taddq $~a, %rsp\n\tmovq $0, %rax\n" restore "\tpopq %rbp\n\tretq") m (+ n 48))]
                    [(equal? (system-type) `windows) (format (string-append "\n\tmovq %rax, %rcx\n" (print-result type) "\tsubq $~a, %r15\n\taddq $~a, %rsp\n\tmovq $0, %rax\n" restore "\tpopq %rbp\n\tretq") m (+ n 48))]
                    [else (format (string-append "\n\tmovq %rax, %rdi\n" (print-result type) "\tsubq $~a, %r15\n\taddq $~a, %rsp\n\tmovq $0, %rax\n" restore "\tpopq %rbp\n\tretq") m (+ n 48))])))

(define (fn-conclusion stacksize rootstacksize argspills)
  ;(format (string-append "\n\taddq $~a, %rsp\n\tsubq $~a, %r15\n" restore "\tpopq %rbp\n\tretq\n\n") (+ (+ stacksize argspills) 48) rootstacksize))
  (format (string-append "\n\taddq $~a, %rsp\n\tsubq $~a, %r15\n" restore "\tpopq %rbp\n\tretq\n\n") (+ stacksize argspills) rootstacksize))

(define (arg->string arg)
  (match arg
    [`(deref ,reg ,n) (format "~a(%~a)" n reg)]
    [`(reg ,r) (format "%~a" r)]
    [`(byte-reg ,r) (format "%~a" r)]
    [`(int ,n) (format "$~a" n)]
    [`(global-value ,ptr) (format "~a(%rip)" ptr)]
    [`(function-ref ,label) (format "~a(%rip)" label)]
    [else (format "~a" arg)]))

; handles writing up a function.
(define (print-fn def)
  (match def
    [`(define (,name) ,n ((,regn ,rootn) ,n2) ,instrs ...)
     (string-append (fn-intro regn rootn n)
                    (foldr string-append "" (map print-x86 instrs))
                    (fn-conclusion regn rootn))]))

(define (print-x86 exp)
  (match exp
    [`(jmp-if ,cc ,label) (format "\tj~a ~a\n" cc label)]
    [`(set ,e ,arg) (string-append "\tsete " (arg->string arg) "\n")]
    [`(,op ,arg1 ,arg2) (string-append "\t" (format "~a" op) " " (arg->string arg1) ", " (arg->string arg2) "\n")]
    [`(label ,name) (format "~a:\n" name)]
    [`(indirect-callq ,arg) (if (equal? (system-type) `macosx) (format "\tcallq *~a\n" (arg->string arg)) (format "\tcallq *~a\n" (arg->string arg)))]
    [`(,op ,arg) (string-append "\t" (format "~a" op) " " (arg->string arg) "\n")]   
    [`(callq ,fn) (if (equal? (system-type) `macosx) (format "\tcallq _~a\n" fn) (format "callq ~a\n" fn))]
    [`(define (,f) ,n ((,regn ,rootn) ,maxstack) ,instrs ...) (string-append
                                                        (fn-intro f regn rootn maxstack)
                                                        (foldr string-append "" (map print-x86 instrs))
                                                        (fn-conclusion regn rootn maxstack))]
    [`(program (,regn ,rootn) (type ,t) (defines ,defs ...) ,instrs ...)
     (string-append 
                    (foldr string-append "" (map print-x86 defs))
                    (intro regn rootn)
                    (foldr string-append "" (map print-x86 instrs))
                    (conclusion regn rootn t))]))

;;; End Print x86 ;;;
