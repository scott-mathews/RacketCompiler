#lang racket

(require "../utilities.rkt")

(require "../utilities/constants.rkt")
(require "../utilities/helpers.rkt")

(provide build-interference)

;;; === Build-Interference === ;;;
(define (build-interference exp)
  (match exp
    [`(define (,f) ,n ((,vars ,live-afters) ,m) ,instrs ...)
     `(define (,f) ,n ((,vars ,(graphify vars (make-graph (map car vars)) live-afters instrs)) ,m) ,@instrs)]
    [`(program (,vars ,live-afters) ,type (defines ,defs ...),instrs ...)
     `(program (,vars ,(graphify vars (make-graph (map car vars)) live-afters instrs))
               ,type
               (defines ,@(map build-interference defs))
               ,@instrs)]))

(define (graphify vars graph live-afters instrs)
  (define g graph)
  (for ([lafter live-afters] [instr instrs])
    (define lafter-v (set->list lafter))
    (match instr
      [`(indirect-callq (,type ,d))
       (for ([reg caller-save])
         (for ([var lafter-v])
           (add-edge g (register->color reg) var)))
       ;(if (equal? type 'var)
           (for ([reg arg-reg-list])
             (add-edge g (register->color reg) d))
           ;"pass")
           ]
      [`(callq collect) (for ([var lafter-v])
                          (for ([callee (set-union callee-save)])
                            (add-edge g var callee))
                              "pass")
                        ; add call-clobbered registers to interference
                        (for ([reg caller-save])
                         ; everything live after this interferes with the call-clobbered registers
                         (for ([var lafter-v])
                           (add-edge g (register->color reg) var)))]
      
      [`(callq ,label) ; add call-clobbered registers to interference
                       (for ([reg caller-save])
                         ; everything live after this interferes with the call-clobbered registers
                         (for ([var lafter-v])
                           (add-edge g (register->color reg) var)))]
      [`(,op (,type1 ,s) (,type2 ,d)) #:when (or (equal? op `movq) (equal? op `movzbq))
                                      (for ([var lafter-v])
                                        (if (or (equal? s var) (equal? d var))
                                            "pass"
                                            (add-edge g var d)))]
      [`(,op (,type1 ,s) (,type2 ,d)) (for ([var lafter-v])
                                        (if (equal? d var)
                                            "pass"
                                            (add-edge g var d)))]
      [`(,op (,type1 ,reg ,arg) (,type2 ,d)) (for ([var lafter-v])
                                               (if (equal? d var)
                                                   "pass"
                                                   (add-edge g var d)))]
      [`(,op (,type1 ,s) (,type2 ,reg ,arg)) (for ([var lafter-v])
                                               (if (equal? s var)
                                                   "pass"
                                                   (add-edge g var s)))]
      [`(,op (,type ,v)) (for ([var lafter-v])
                           (add-edge g var v))]

      [`(if ,cnd ,thns ,thn-sets ,elss ,els-sets) (define thn-g (graphify vars g thn-sets thns))
                                                  (define els-g (graphify vars g els-sets elss))
                                                  ; combine thn-g and els-g with g
                                                  (for ([thn-v (vertices thn-g)] [els-v (vertices els-g)])
                                                    (for ([adj-v (adjacent thn-g thn-v)])
                                                      (add-edge g thn-v adj-v))
                                                    (for ([adj-v (adjacent els-g els-v)])
                                                      (add-edge g els-v adj-v)))]
      [else ;(displayln "not matched in build-interference") (displayln instr) (displayln lafter-v) (displayln "")
            "pass"]
      ))
  g)



;;; End Build-Interference ;;;