#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")
(require "../utilities/constants.rkt")

; Build an interfererence graph based off of live-after sets
(define (build-interference prog)
  (match prog
    [`(program ((,vars ...) (,live-afters ...)) ,type (defines ,defs) ,instrs ...)
     `(program (,vars ,(build-graph vars live-afters instrs (make-graph (map car vars)))) ,type (defines ,@(map build-define-graph defs)) ,@instrs)]))

; Build the interference graph for a function
(define (build-define-graph def)
  (match def
    [`(define (,name) (,num-args ,maxstack) ((,vars ...) (,live-afters ....)) ,instrs ...)
     `(define (,name) (,num-args ,maxstack) ((,vars ...) ,(build-graph vars live-afters instrs (make-graph (map car vars)))) ,@instrs)]))

; Build the interference graph
(define (build-graph vars live-afters instrs initial-graph)
  ; graph is the interference graph we will add to
  (define graph initial-graph)

  ; iterate through the instructions and live-after-sets for each instruction
  ; simultaneously
  (for ([live-after-set live-afters] [instr instrs])
    (match instr
      [`(if ,cnd (,instrs-thns ...) (,live-after-thens ...) (,instrs-elss ...) (,live-after-elss ...))
       ...]

      [`(,op ,args ...)
       (match op
         ; If instruction I is a (movq s d), add an edge (d,v) for every
         ; v in the live-after set of k (UNLESS v == d OR v == s)
         [`movq (for ([var live-after-set])
                  (if (and (var-typed-arg? (second args)) (not (or (equal? var (get-name (first args))) (equal? var (get-name (second args))))))
                      (add-edge graph var (get-name (second args)))
                      (void)))]
         
         ; If instruction I is a (addq s d), add an edge (d,v) for every
         ; v in the live-after set of k (UNLESS v == d)
         [`addq (for ([var live-after-set])
                  (if (and (var-typed-arg? (second args)) (not (equal? var (get-name (second args)))))
                      (add-edge graph var (get-name (second args)))
                      (void)))]

         ; If instruction I is a (negq sd), add an edge (sd, v) for every
         ; v in the live-after set of k (UNLESS v == sd)
         [`negq (for ([var live-after-set])
                  (if (and (var-typed-arg (first args)) (not (equal? var (get-name (first args)))))
                      (add-edge graph var (get-name (first args)))
                      (void)))]

         ;
         [`xorq (for)]
         
         )])))



(define (callq-op? op))

(define (var-typed-arg? arg)
  (equal? (first arg) 'var))

(define (get-name arg)
  (second arg))