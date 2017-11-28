#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")
(require "../utilities/constants.rkt")

(provide build-interference)

; Build an interfererence graph based off of live-after sets
(define (build-interference prog)
  (match prog
    [`(program ((,vars ...) (,live-afters ...)) ,type (defines ,defs ...) ,instrs ...)
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
      [`(if ,cnd (,instrs-thns ...) (,live-after-thns ...) (,instrs-elss ...) (,live-after-elss ...))
       
       ; Apply add-like-op? case to cnd...
       ; This is ugly, can we move it?
       (for ([var live-after-set])
            (if (and (var-typed-arg? (third cnd)) (not (equal? var (get-name (third cnd)))))
                (add-edge graph var (get-name (third cnd)))
                (void)))
       
       `(if ,cnd ,instrs-thns ,(build-graph vars live-after-thns instrs-thns graph)
                              ,(build-graph vars live-after-elss instrs-elss graph))]

      [`(,op ,args ...)
       (match op
         ; If instruction I is a (movq s d), add an edge (d,v) for every
         ; v in the live-after set of I (UNLESS v == d OR v == s)
         [(? move-like-op?)
          (for ([var live-after-set])
            (if (and (var-typed-arg? (second args)) (not (or (equal? var (get-name (first args))) (equal? var (get-name (second args))))))
                (add-edge graph var (get-name (second args)))
                (void)))]
         
         ; If instruction I is a (addq s d), add an edge (d,v) for every
         ; v in the live-after set of I (UNLESS v == d)
         [(? add-like-op?)
          (for ([var live-after-set])
            (if (and (var-typed-arg? (second args)) (not (equal? var (get-name (second args)))))
                (add-edge graph var (get-name (second args)))
                (void)))]

         ; If instruction I is a (negq sd), add an edge (sd, v) for every
         ; v in the live-after set of I (UNLESS v == sd)
         [(? neg-like-op?)
          (for ([var live-after-set])
            (if (and (var-typed-arg? (first args)) (not (equal? var (get-name (first args)))))
                (add-edge graph var (get-name (first args)))
                (void)))]

         [`set
          (void)]
         
         ;;;;;;;;;;;;;;;;;
         ; Special cases ;
         ;;;;;;;;;;;;;;;;;

         ; If instruction I is a callq, add an edge (r, v) for every
         ; v in the live-after set of I, for all caller-save registers
         ; r. Additionally, if the call is to collect, add an edge (r,v)
         ; for every v with type Vector, for all callee-save registers
         ; r.
         [`callq
          (if (equal? (first args) `collect)
              (for ([var live-after-set])
                (if (and (list? (lookup var vars)) (equal? (car (lookup var vars)) 'Vector))
                    (for ([callee callee-save])
                      (add-edge graph (register->color callee) var))
                    (void)))
              (void))
          (for ([var live-after-set])
            (for ([caller caller-save])
              (add-edge graph (register->color caller) var)))]

         [else (error `build-graph "Unmatched op in build-graph: ~a" op)])]

      [else (error `build-graph "Unmatched instruction in build-graph: ~a" instr)]))

  ; Return the graph that has been created
  graph)

(define (var-typed-arg? arg)
  (equal? (first arg) 'var))

; Grabs the name of an arg
; (only works if the arg is typed var)
(define (get-name arg)
  (second arg))