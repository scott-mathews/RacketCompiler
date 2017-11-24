#lang racket

; Import provided
(require "../utilities.rkt")

; Import custom
(require "../utilities/constants.rkt")
(require "../utilities/helpers.rkt")

(provide expose-allocation)

(define flipper "no one was here")

;;; === Expose Allocation === ;;;

(define (expose-allocation exp)
  (define vec-assoc (lambda (v) `(well bucko... you done fucked up)))
  (define (alloc-helper elist elen tiny-env v type e*)
    (cond
      [(empty? elist)
       (begin
         (set! vec-assoc tiny-env)
         `(has-type (let ([,(gensym `collectret) (has-type (if (has-type (< (has-type (+ (global-value free_ptr)
                                                                     (has-type ,(+ 8 (* 8 (length e*))) Integer)) Integer)
                                                        (global-value fromspace_end)) Boolean)
                                           (has-type (void) Void)
                                           (has-type (collect ,(+ 8 (* 8 (length e*)))) Void)) Void)])
            ,(if (equal? (length e*) 0)
                 `(has-type (let ([,v (has-type (allocate ,(length e*) ,type) ,type)]) (has-type ,v ,type)) ,type)
                 `(has-type (let ([,v (has-type (allocate ,(length e*) ,type) ,type)])
                    ,(alloc-helper2 v type (length e*) e*)) ,type))) ,type))]
      [else
       (let ([x (gensym `vecinit)])
         (if (and (pair? (second (car elist))) (eq? `vector (car (second (car elist)))))
             (begin
               ;(set! flipper (expose-allocation (car elist)))
               `(has-type (let ([,x ,(expose-allocation (car elist))])
                  ,(alloc-helper (cdr elist) elen (lambda (v)
                                                    (begin
                                                      ;(set! flipper elist)
                                                      (if (eq? v (car elist))
                                                          `(,x ,(last (car elist)))
                                                          (tiny-env v)))) v type e*)) ,type))
             `(has-type (let ([,x ,(expose-allocation (car elist))])
                ,(alloc-helper (cdr elist) elen (lambda (v)
                                                  (begin
                                                    ;(set! flipper elist)
                                                    (if (eq? v (car elist))
                                                        `(,x ,(third (car elist)))
                                                        (tiny-env v)))) v type e*)) ,type)))]))
  (define (alloc-helper2 v type len list)
    (cond
      ;[(eq? 0 (length list)) ]
      [(eq? 1 (length list)) `(has-type (let ([,(gensym `initret) (has-type (vector-set! (has-type ,v ,type) (has-type ,(- len (length list)) Integer) (has-type ,(car (vec-assoc (car list))) ,(begin
                                                                                                                                                                                        ;(set! flipper list)
                                                                                                                                                                                        (second (vec-assoc (car list)))))) Void)])
                                (has-type ,v ,type)) Void)]
      (else
       `(has-type (let ([,(gensym `initret) (has-type (vector-set! (has-type ,v ,type) (has-type ,(- len (length list)) Integer) (has-type ,(car (vec-assoc (car list)))
                                                                                                                                 ,(begin
                                                                                                                                    ;(set! flipper `(,(car (vec-assoc (car list))) ,(second (vec-assoc (car list)))))
                                                                                                                                    (second (vec-assoc (car list)))))) Void)])
          ,(alloc-helper2 v type len (cdr list))) Void))))
  (match exp
    [`(has-type ,terminal ,type) #:when (terminal? terminal) exp]
    [`(has-type (function-ref ,f) ,t) exp]
    [`(has-type (vector ,e* ...) ,type)
     ;(set! e* (map expose-allocation e*))
     (let ([v (gensym `alloc)])
       (alloc-helper e* (length e*) vec-assoc v type e*))]
    [`(has-type (let ([,x ,e]) ,b) ,tb) `(has-type (let ([,x ,(expose-allocation e)]) ,(expose-allocation b)) ,tb)]
    [`(has-type (if ,cnd ,thn ,els) ,t) `(has-type (if ,(expose-allocation cnd) ,(expose-allocation thn) ,(expose-allocation els)) ,t)]
    [`(has-type (app ,fn ,args* ...) ,t)
     `(has-type (app ,(expose-allocation fn) ,@(map expose-allocation args*)) ,t)]
    [`(has-type (,op ,e) ,t) `(has-type (,op ,(expose-allocation e)) ,t)]
    [`(has-type (,op ,e1 ,e2) ,t) `(has-type (,op ,(expose-allocation e1) ,(expose-allocation e2)) ,t)]
    [`(has-type (,op ,e1 ,e2 ,e3) ,t) `(has-type (,op ,(expose-allocation e1) ,(expose-allocation e2) ,(expose-allocation e3)) ,t)]
    [`(has-type (,op ,args* ...) ,t) `(has-type (,op ,@(map expose-allocation args*)) ,t)]
    [`(define (,var ,args* ...) ,body)
     `(define (,var ,@args*) ,(expose-allocation body))]
    
    [`(program ,type ,exps ...)
     (define body (last exps))
     (define defs (reverse (cdr (reverse exps))))
     (define new-defs '())
     (for ([def defs])
       (set! new-defs (cons (expose-allocation def) new-defs)))
     `(program ,type ,@(reverse new-defs) ,(expose-allocation body))]))

(define (alook-up var vars)
  (cond
    [(empty? vars) ""]
    [(eq? var (car vars))
     (if (pair? (cdr vars))
         (car (cdr vars))
         (cdr vars))]
    [else (alook-up var (cdr vars))]
    ))

(define find
  (lambda (ls ind bs)
    (cond
      [(eq? bs ind) (car ls)]
      [else (find (cdr ls) ind (add1 bs))])))

; tests ;

;;; End Expose Allocation ;;;