#lang racket

(require "../utilities.rkt")

(require "../utilities/constants.rkt")
(require "../utilities/helpers.rkt")

(provide allocate-registers)

;;; === Allocate-Registers === ;;;

(define (allocate-registers exp)
    (match exp
      [`(define (,f) ,n ((,vars ,graph) ,m) ,instrs ...)
       (define new-names (color-graph graph (build-MoveG (map car vars) instrs) (map car vars)))
       (define-values (spill rootstack-spill) (split-spills vars))
       (define new-vars (prune-vars new-names spill))
       `(define (,f) ,n ((,new-vars ,rootstack-spill) ,m) ,@(map (lambda (instr) (update-name new-names instr)) instrs))]
      [`(program (,vars ,graph) ,type (defines ,defs ...) ,instrs ...)
       (define new-names (color-graph graph (build-MoveG (map car vars) instrs) (map car vars)))
       (define new-vars (prune-vars new-names vars))
       (define-values (spill rootstack-spill) (split-spills new-vars))
       `(program (,new-vars ,rootstack-spill) ,type (defines ,@(map allocate-registers defs)) ,@(map (lambda (instr) (update-name new-names instr)) instrs))]))

(define (prune-vars new-names vars)
  (filter (lambda (var) (>= (hash-ref new-names (car var)) (vector-length general-registers))) vars))

; splits list of var . type into list of list of var . type list of var . type
; aka a list containing regular vars, and a list containing rootStack vars
(define (split-spills vars)
  ; checking types of vars
  ;(for ([var vars])
  ;  (display (car var)) (display " :: ") (display (cdr var)) (display "\n"))

  
  (define regular-vars '())
  (define rootstack-vars '())
  (if (empty? vars)
      (values regular-vars rootstack-vars)
  (for ([var (if (pair? (car vars))
                 (map car vars)
                 vars)])
    (if (equal? (look-up-type var vars) `Vector)
        (set! rootstack-vars (cons var rootstack-vars))
        (set! regular-vars (cons var regular-vars))
        )))
  (values regular-vars rootstack-vars))

(define (update-name new-names instr)
  (match instr
    [`(,op (,type1 ,v1) (,type2 ,v2)) `(,op ,(if (and (equal? 'var type1) (< (hash-ref new-names v1) (vector-length general-registers)))
                                                     `(reg ,(vector-ref general-registers (hash-ref new-names v1)))
                                                     `(,type1 ,v1))
                                                ,(if (and (equal? 'var type2) (< (hash-ref new-names v2) (vector-length general-registers)))
                                                     `(reg ,(vector-ref general-registers (hash-ref new-names v2)))
                                                     `(,type2 ,v2)))]

    ; Matches deref reg int clauses
    [`(,op (,type1 ,v1) (,type2 ,v2 ,arg)) `(,op ,(if (and (equal? 'var type1) (< (hash-ref new-names v1) (vector-length general-registers)))
                                                 `(reg ,(vector-ref general-registers (hash-ref new-names v1)))
                                                 `(,type1 ,v1))
                                            ,(if (and (equal? 'var type2) (< (hash-ref new-names v2) (vector-length general-registers)))
                                                 `(reg ,(vector-ref general-registers (hash-ref new-names v2)))
                                                 `(,type2 ,v2 ,arg)))]
    [`(,op (,type1 ,v1 ,arg) (,type2 ,v2)) `(,op ,(if (and (equal? 'var type1) (< (hash-ref new-names v1) (vector-length general-registers)))
                                                 `(reg ,(vector-ref general-registers (hash-ref new-names v1)))
                                                 `(,type1 ,v1 ,arg))
                                            ,(if (and (equal? 'var type2) (< (hash-ref new-names v2) (vector-length general-registers)))
                                                 `(reg ,(vector-ref general-registers (hash-ref new-names v2)))
                                                 `(,type2 ,v2)))]

    
    [`(,op (,type ,v)) `(,op ,(if (and (equal? 'var type) (< (hash-ref new-names v) (vector-length general-registers)))
                                  `(reg ,(vector-ref general-registers (hash-ref new-names v)))
                                  `(,type ,v)))]
    [`(if ,cnd ,elss ,els-sets ,thns ,thn-sets) `(if ,(update-name new-names cnd)
                                                     ,(map (lambda (instr) (update-name new-names instr)) elss)
                                                     ,(map (lambda (instr) (update-name new-names instr)) thns))]
    ;[else (displayln "not matched in update-name") (displayln instr) (displayln "")]))
    [else instr]))

(define (color-graph graph mgraph vars)
  ;(displayln (format "VARS: ~a" vars))
  ; constraints : (Var . Set of Numbers)
  (define constraints (make-hash))
  ; labels : (Var . Number)
  (define labels (make-hash))
  (define W vars)

  ; Build initial set of constraints
  (define precount 0)
  (while (<= precount (set-count caller-save))
    (if (hash-ref graph precount #f)
        (for ([adj-item (adjacent graph precount)])
          (hash-update! constraints adj-item (lambda (item) (set-union (set precount) item)) (set precount)))
        "pass")
    (set! precount (+ precount 1)))
  
  (while (not (empty? W))
    ; Sort W by # constraints decreasing
    (set! W (sort W (lambda (x y) (> (set-count (hash-ref constraints x (set))) (set-count (hash-ref constraints y (set)))))))
    ; Pop first item in W
    (define i (car W))
    (set! W (cdr W))
    (define priority-set (filter (lambda (x) (not (equal? x (set))))
                                 (map (lambda (n) (hash-ref labels n (set)))
                                      (filter (lambda (x) (not (set-member? (list->set (adjacent graph i)) x))) (set->list (adjacent mgraph i))))))
    (define count 0)
    (define set-already #f)
    (for ([p-val priority-set])
      (if (not (set-member? (hash-ref constraints i (set)) p-val))
          (begin
            (hash-set! labels i p-val)
            (set! set-already #t)
            (set! count p-val))
          "pass"))
    ; Find first number not in constraints of i
    (if (not set-already)
        (begin
          (while (set-member? (hash-ref constraints i (set)) count)
                 (set! count (+ count 1)))
          (hash-set! labels i count))
        "pass")
        ; Assign i to count
    
    ; Update constraints for all adjacent nodes to i
    (for ([adj-item (adjacent graph i)])
      (hash-update! constraints adj-item (lambda (item) (set-union (set count) item)) (set count))))
  labels)

(define (build-MoveG vars inst)
  (define g (make-graph vars))
  (for ([i inst])
    (match i
      [`(movq (var ,x) (var ,y)) (add-edge g x y)]
      [else "Pass"]))
   g)

;;; End Allocate-Registers ;;;