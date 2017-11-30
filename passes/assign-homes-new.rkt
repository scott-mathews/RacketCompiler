#lang racket

(require "../utilities.rkt")

(provide assign-homes)

(define (assign-homes program)
  (match program
    [`(program (,stack-vars ,rootstack-vars) ,type (defines ,defs ...) ,instrs ...)
     (define homes (append (make-stack-homes stack-vars) (make-rootstack-homes rootstack-vars)))
     `(program (,(push-stack stack-vars) ,(push-rootstack rootstack-vars))
               ,type
               (defines ,@(map assign-homes-define defs))
               ,@(map (update-home homes) instrs))]))

(define (assign-homes-define def)
  (match def
    [`(define (,name) ((,stack-vars ,rootstack-vars) ,max-stack) ,instrs ...)
     (define homes (append (make-stack-homes stack-vars) (make-rootstack-homes rootstack-vars)))
     `(define (,name) (,(push-stack stack-vars) ,(push-rootstack rootstack-vars) ,max-stack) ,@(map (update-home homes) instrs))]))

(define (push-stack vars)
  (+ (* 8 (length vars)) 40))

(define (push-rootstack vars)
  (* 8 (length vars)))

(define (update-home homes)
  (lambda (instr)
    (match instr
      [`(if (,op ,args ...) ,instr-thns ,instr-elss)
       `(if (,op ,@(map (lambda (arg) (arg->home arg homes)) args)) ,(map (update-home homes) instr-thns) ,(map (update-home homes) instr-elss))]
      [`(,op ,args ...)
       `(,op ,@(map (lambda (arg) (arg->home arg homes)) args))])))

(define (arg->home arg homes)
  (match arg
    [`(var ,var) (lookup var homes)]
    [else arg]))

; makes an association list between variable names and
; their new homes
(define (make-stack-homes stack-vars)
  ; what up homes?
  (define homes '())

  (define ctr -48)

  ; give each var a home!
  (for ([var stack-vars])
    ; var (name . type)
    (set! homes (cons (cons var `(deref rbp ,ctr)) homes))
    (set! ctr (- ctr 8)))

  homes)

(define (make-rootstack-homes rootstack-vars)
  (define homes '())

  (define ctr -8)

  (for ([var rootstack-vars])
    (set! homes (cons (cons var `(deref r15 ,ctr)) homes))
    (set! ctr (- ctr 8)))

  homes)