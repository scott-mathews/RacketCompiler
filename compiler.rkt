#lang racket
(require racket/fixnum)
(require racket/trace)
(require "interp.rkt")
(require "utilities.rkt")

;; This exports passes, defined below, to users of this file.
(provide r0-passes r1-passes pe-arith-pass uniquify-pass flatten-pass select-instructions-pass allocate-registers-pass patch-instructions-pass typecheck-R2 lower-conditionals-pass
         r2-passes)

(define cmp-syms '(< > <= >= eq?))
(define bool-syms-biadic '(and))
(define arith-syms-biadic '(+))
(define arith-syms-monadic '(-))

;;; === Type Checker === ;;;

(define (typecheck-R2 env)
  (lambda (e)
    (define recur (typecheck-R2 env))
    (match e
      [(? fixnum?) `Integer]
      [(? boolean?) `Boolean]
      [(? symbol?) (lookup e env)]
      [`(read) `Integer]
      [`(let ([,x ,(app recur T)]) ,body)
       (define new-env (cons (cons x T) env))
       ((typecheck-R2 new-env) body)]
      [`(,op ,(app recur n1) ,(app recur n2)) #:when (member op arith-syms-biadic)
                     (if (and (equal? n1 `Integer) (equal? n2 `Integer))
                         `Integer
                         (error `typecheck-R2 "~a expects integer arguments" op))]
      [`(,op ,(app recur n)) #:when (member op arith-syms-monadic)
                                          (if (equal? n `Integer)
                                              `Integer
                                              (error `typecheck-R2 "~a expects integer arguments" op))]
      [`(not ,(app recur T))
       (match T
         [`Boolean `Boolean]
         [else (error `typecheck-R2 "`not` expects a boolean" e)])]
      [`(,op ,(app recur b1) ,(app recur b2)) #:when (member op bool-syms-biadic)
                                                                        (if (and (equal? b1 `Boolean) (equal? b2 `Boolean))
                                                                            `Boolean
                                                                            (error `typecheck-R2 "~a expects boolean arguments" op))]
      [`(,op ,(app recur t1) ,(app recur t2)) #:when (member op cmp-syms)
                                                                        (define accepted-types (if (equal? 'eq? op) '(Boolean Integer) '(Integer)))
                                                                        (if (and (member t1 accepted-types) (member t2 accepted-types) (equal? t1 t2))
                                                                            `Boolean
                                                                            (error `typecheck-R2 "~a expects integer arguments (or of the same type if eq?)" op))]
      [`(if ,(app recur cnd) ,(app recur thn) ,(app recur els))
       (if (equal? `Boolean cnd)
           (if (equal? thn els)
               thn
               (error `typecheck-R2 "both branches of if must be same type"))
           (error `typecheck-R2 "if expects a boolean in the conditional"))]
      [`(program ,body)
       (define ty ((typecheck-R2 '()) body))
       `(program (type ,ty) ,body)]
      )))

; tests ;
(define tc-int0 `(program (+ 3 4)))
(define tc-bool0 `(program (>= 3 4)))
(define tc-int `(program (if (eq? (read) 0) 777 (+ 2 (if (eq? (read) 0) 40 444)))))
(define tc-bool `(program (let ((x (if (eq? 42 (read)) #f #t))) (and x (> 30 (read))))))
(define tc-int2 `(program (let ((x (let ((y 30)) (+ y 12)))) (if (eq? x 12) (+ x 124) 42))))
(define tc-fail0 `(program (let ((x #f)) (+ 3 x))))
(define tc-fail1 `(program (if (eq? (read) 33) #f 3)))
(define tc-fail2 `(program (> 34 (- #f))))
(define tc-fail3 `(program (if (eq? (read) 42) #f (+ 33 2001))))
(define tc-fail4 `(program (if (eq? (read) 42) (if (eq? (read) 42) #f #t) 13)))

;;; End Type Checker ;;;

;;; === Partial Evaluator === ;;;

(define (pe-neg2 exp)
  (match exp
    [ n         #:when (fixnum? n)                     (fx- 0 n)] ; int -> -int
    [`(+ ,n ,m) #:when (and (fixnum? n) (fixnum? m))  `(+ ,(pe-neg2 n) (pe-neg2 m))] ; (+ int int) -> (+ -int -int)
    [`(+ ,n ,e) #:when (fixnum? n)                    `(+ ,(pe-neg2 n) (- ,e))] ; (+ int exp) -> (+ -int (- exp))
    [`(+ ,e ,n) #:when (fixnum? n)                     (pe-neg2 `(+ n e))] ; (+ exp int) -> (+ -int (-exp))
    [e                                                `(- ,e)])) ; exp -> (- exp)

(define (pe-add2 left right)
  (match* (left right)
    [( n            m)           #:when (and (fixnum? n) (fixnum? m))  (fx+ n m)] ; int int -> int
    [( n           `(+ ,m ,b))   #:when (and (fixnum? n) (fixnum? m)) `(+ ,(fx+ n m) ,b)] ; int (+ int exp) -> (+ int exp)
    [(`(+ ,m ,b)    n)           #:when (and (fixnum? n) (fixnum? m)) `(+ ,(fx+ n m) ,b)] ; (+ int exp) int -> (+ int exp)
    [( n           `(+ ,ra ,rb)) #:when (fixnum? n)                    (pe-add2 (pe-add2 n ra) rb)] ; int (+ exp exp) -> (pe-add2 (pe-add2 int exp) exp)
    [(`(+ ,la ,lb) `(+ ,ra ,rb))                                      `(+ ,(pe-add2 ra la) ,(pe-add2 rb lb))] ; (+ exp exp) (+ exp exp) -> (+ (pe-add2 exp exp) (pe-add2 exp exp))
    [( a            b)           #:when (fixnum? b)                    (pe-add2 b a)] ; exp int -> (pe-add2 int exp)
    [( a            b)                                                `(+ ,a ,b)])) ; exp exp -> (+ exp exp)

(define (pe-arith e)
  (match e
    [(? fixnum?)    e]
    [(? symbol?)    e]
    [(? boolean?)   e]
    [`(read)       `(read)]
    [`(- ,e1)       (pe-neg2 (pe-arith e1))]
    [`(+ ,e1 ,e2)   (pe-add2 (pe-arith e1) (pe-arith e2))]
    [`(let ([,x ,e]) ,body) `(let ([,x ,(pe-arith e)]) ,(pe-arith body))]
    [`(if ,cnd ,thn ,els) `(if ,cnd ,thn ,els)]
    [`(program ,type ,e) `(program ,type ,(pe-arith e))]
    ))


;;; === Uniquify === ;;;

(define (uniquify alist)
  (lambda (expression)
    (match expression
      [v #:when (symbol? v) (lookup v alist)]
      [n   #:when (integer? n) n]
      [(? boolean?) expression]
      [`(let ([,x ,e]) ,body) (let ([y (gensym x)])
                                (let ([l (cons (cons x y) alist)])
                                `(let ([,y ,((uniquify alist) e)]) ,((uniquify l) body))))]
      [`(if ,cnd ,thn ,els) `(if ,((uniquify alist) cnd) ,((uniquify alist) thn) ,((uniquify alist) els))]
      [`(program ,type ,e) `(program ,type ,((uniquify alist) e))]
      [`(,op ,es ...) `(,op ,@(map (uniquify alist) es))])))


;;; ==== Flatten === ;;;

;;; Helpers ;;;

;; Get variable from list, or generate a temporary one
(define (genvar var)
  (if (empty? var) (gensym `tmp) (car var)))

; If args is empty, call f on just arg. Otherwise call f on the car of args.
(define (pass-optional1 f arg . args)
  (if (null? args) (f arg) (if (null? (car args)) (f arg) (f arg (car (car args))))))

; Check if an expression is a terminal one
(define (terminal? e)
  (or (fixnum? e) (boolean? e) (symbol? e) (equal? `(read) e)))

;;; Flatten Itself ;;;

(define (flatten exp)
  (match exp
    [`(program ,type ,e) (define-values (flat-exp assignments vars) (flatten-helper e))
                   `(program ,vars ,type ,@assignments (return ,flat-exp))]
    ))

(define (flatten-helper exp . var)
  (match exp
    [v #:when (symbol? v) (values v '() (list v))]
    [n #:when (fixnum? n) (values n '() '())]
    [b #:when (boolean? b) (values b '() '())]
    [`(read) (define v (genvar var))
             (values v (list `(assign ,v (read))) (list v))]
    [`(not ,e) (define v (genvar var))
               (define-values (flat-exp assignments vars) (flatten-helper e))
               (values v `(,@assignments (assign ,v (not ,flat-exp))) (cons v vars))]
    [`(and ,e1 ,e2) (flatten-helper `(if ,e1 ,e2 #f))]
    [`(,op ,e1 ,e2) #:when (or (member op cmp-syms) (member op arith-syms-biadic))
                    (define v (genvar var))
                    (define-values (flat-exp1 assignments1 vars1) (flatten-helper e1))
                    (define-values (flat-exp2 assignments2 vars2) (flatten-helper e2))
                    (values v `(,@assignments1 ,@assignments2 (assign ,v (,op ,flat-exp1 ,flat-exp2))) (cons v (append vars1 vars2)))]
    [`(- ,e) (define v (genvar var))
             (define-values (flat-exp assignments vars) (flatten-helper e))
             (values v `( ,@assignments (assign ,v (- ,flat-exp))) (cons v vars))]
    [`(if ,cnd ,thn ,els) (define-values (flat-cnd assignments-cnd vars-cnd) (flatten-helper cnd))
                          (define v (genvar var))
                          (define-values (flat-thn assignments-thn vars-thn) (flatten-helper thn))
                          (define-values (flat-els assignments-els vars-els) (flatten-helper els))
                          (values v `(,@assignments-cnd (if (eq? #t ,flat-cnd)
                                                            (,@assignments-thn (assign ,v ,flat-thn))
                                                            (,@assignments-els (assign ,v ,flat-els))))
                                  (cons v (append vars-cnd vars-thn vars-els)))]
    [`(let ([,v ,e]) ,body) (define-values (flat-exp1 assignments1 vars1)
                              (if (equal? '() var)
                                  (flatten-helper e v)
                                  (flatten-helper e var)))
                            (define-values (flat-exp2 assignments2 vars2) (flatten-helper body))
                            (values flat-exp2
                                    (if (equal? v flat-exp1)
                                    `(,@assignments1 ,@assignments2)
                                    `(,@assignments1 (assign ,v ,flat-exp1) ,@assignments2))
                                    (set->list (list->set (cons v (append vars1 vars2)))))]
    ))

; tests ;
(define tf-bk-1 `(program (if #f 0 42)))
(define tf-bk-2 `(program (if (eq? (read) 0)
                         777
                         (+ 2 (if (eq? (read) 0)
                                  40
                                  444)))))
(define tf-ps-1 `(program (let ([x 52]) (if (> x 42)
                                            (let ([y (+ (- x) 42)])
                                              (+ y x))
                                            (let ([y (+ (- 42) x)])
                                              (+ y x))))))
(define tf-ps-2 `(program (if (not #f)
                              (+ 3 39)
                              (- (+ (- 3) (- 39))))))


;;; === Select Instructions === ;;;

;;; Helpers ;;;

; Map a procedure which returns multiple values over a list, and return the result in a non-nested list
(define (map-me proc lst)
  (cond [(empty? lst) lst]
        [else (append (map-me-helper (proc (car lst))) (map-me proc (cdr lst)))]))

(define (map-me-helper x . xs)
  (append x xs))

(define (val->typedval e)
  (match e
    [(? fixnum?) `(int ,e)]
    [(? symbol?) `(var ,e)]
    [(? boolean?) (if e
                      `(int 1)
                      `(int 0))]
    [else e]))

(define (cmp->cc op)
  (match op
    [`> `g]
    [`< `l]
    [`>= `ge]
    [`<= `le]
    [`eq? `e]))

;;; Select Instructions Itself ;;;

(define (select-instructions exp)
  (match exp
    [`(assign ,lhs (read)) (list `(callq read_int)
                                 `(movq (reg rax) (var ,lhs)))]
    [`(assign ,v1 ,v2) #:when (terminal? v2) (list `(movq ,(val->typedval v2) ,(val->typedval v1)))]
    [`(assign ,v (- ,e)) (if (equal? v e)
                             (list `(negq ,(val->typedval v)))
                             (list `(movq ,(val->typedval e) ,(val->typedval v))
                                   `(negq ,(val->typedval v))))]
    [`(assign ,v (not ,e)) (if (equal? v e)
                              (list `(xorq (int 1) ,(val->typedval v)))
                              (list `(movq ,(val->typedval e) ,(val->typedval v))
                                    `(xorq (int 1) ,(val->typedval v))))]
    [`(assign ,v (+ ,e1 ,e2)) (cond
                                [(equal? v e1) (list `(addq ,(val->typedval e2) ,(val->typedval v)))]
                                [(equal? v e2) (list `(addq ,(val->typedval e1) ,(val->typedval v)))]
                                [else (list `(movq ,(val->typedval e1) ,(val->typedval v))
                                            `(addq ,(val->typedval e2) ,(val->typedval v)))])]
    [`(assign ,v (,cmp ,e1 ,e2)) (list `(cmpq ,(val->typedval e2) ,(val->typedval e1))
                                       `(set ,(cmp->cc cmp) (byte-reg al))
                                       `(movzbq (byte-reg al) ,(val->typedval v)))]
    [`(if (,cmp ,arg1 ,arg2) (,thn ...) (,els ...)) (list `(if (,cmp ,(val->typedval arg1) ,(val->typedval arg2)) ,(values (map-me select-instructions thn)) ,(values (map-me select-instructions els))))]
    [`(return ,v) (list `(movq ,(val->typedval v) (reg rax)))]
    [`(program (,vars ...) ,type ,instrs ...) `(program ,vars ,type ,@(remove-duplicate-movq (values (map-me select-instructions instrs))))]))

(define (remove-duplicate-movq list)
  (cond [(empty? list) '()]
        [(empty? (cdr list)) `(,(car list))]
        [else (match (car list)
                [`(movq ,a ,b) (if (equal? (car list) (cadr list))
                  (remove-duplicate-movq (cdr list))
                  (cons (car list) (remove-duplicate-movq (cdr list))))]
                [else (cons (car list) (remove-duplicate-movq (cdr list)))])]))

;;; === Uncover Live === ;;;

(define (live-after-set read written prevset)
  (set-union read (set-subtract prevset written)))

(define (uncover-live exp)
  (match exp
    [`(program (,vars ...) ,type ,instrs ...) (define-values (sets new-instrs) (get-set-of-vars-from-instructions instrs (set)))
                                        `(program (,vars ,sets) ,type ,@new-instrs)]))

(define (get-set-of-vars-from-instructions instrs initial-set)
  (define sets `(,initial-set))
  (define new-instrs '())
  (for ([instr (reverse instrs)])
    (if (equal? instr '())
        "pass"
        (match instr
          [`(,op (var ,read) (var ,writ)) #:when (or (equal? op `movq) (equal? op `movzbq))
                                          (set! sets (cons (live-after-set (set read) (set writ) (car sets)) sets))
                                          (set! new-instrs (cons instr new-instrs))]
          [`(movq (,type ,x) (var ,writ)) (set! sets (cons (live-after-set (set) (set writ) (car sets)) sets))
                                          (set! new-instrs (cons instr new-instrs))]
          [`(,op (var ,read) (,type ,writ)) (set! sets (cons (live-after-set (set read) (set) (car sets)) sets))
                                            (set! new-instrs (cons instr new-instrs))]
          [`(if ,cnd ,thns ,elss) (define-values (thns-sets thns-instrs) (get-set-of-vars-from-instructions thns (car sets)))
                                  (define-values (elss-sets elss-instrs) (get-set-of-vars-from-instructions elss (car sets)))
                                  (define new-instr `(if ,cnd ,thns-instrs ,thns-sets ,elss-instrs ,elss-sets))
                                  (define cnd-set (match cnd [`(,op (,type1 ,val1) (,type2 ,val2)) (cond [(and (equal? type1 `var) (equal? type2 `var)) (set val1 val2)]
                                                                                                         [(equal? type1 `var) (set val1)]
                                                                                                         [(equal? type2 `var ) (set val2)]
                                                                                                         [else (set)])]))
                                  (set! sets (cons (set-union cnd-set (car thns-sets) (car elss-sets)) sets))
                                  (set! new-instrs (cons new-instr new-instrs))]
          [else (set! sets (cons (car sets) sets))
                (set! new-instrs (cons instr new-instrs))])))
  (values sets new-instrs))

;; test programs ;;
(define tp-ul-if `(program (x y) (movq (int 10) (var x)) (if (> (int 10) (var x)) ((movq (int 3) (var y))) ((movq (int 42) (var y)))) (movq (var y) (reg rax))))

;;; End Uncover-Live ;;;

;;; === Build-Interference === ;;;
(define (build-interference exp)
  (match exp
    [`(program (,vars ,live-afters) ,instrs ...) `(program (,vars
                                                            ,(graphify (make-graph vars) live-afters instrs)
                                                            )
                                                            ,@instrs)]))

(define (graphify graph live-afters instrs)
  (define g graph)
  (for ([lafter live-afters] [instr instrs])
    (define lafter-v (set->list lafter))
    (match instr
      [`(,op (,type1 ,s) (,type2 ,d)) #:when (or (equal? op `movq) (equal? op `movzbq))
                                      (for ([var lafter-v])
                                        (if (or (equal? s var) (equal? d var))
                                            "pass"
                                            (add-edge g var d)))]
      [`(,op (,type1 ,s) (,type2 ,d)) (for ([var lafter-v])
                                        (if (equal? d var)
                                            "pass"
                                            (add-edge g var d)))]
      [`(,op (,type ,v)) (for ([var lafter-v])
                           (add-edge g var v))]
      [`(callq ,label) (for ([reg caller-save])
                         (for ([var lafter-v])
                           (add-edge g (register->color reg) var)))]
      [`(if ,cnd ,thns ,thn-sets ,elss ,els-sets) (define thn-g (graphify g thn-sets thns))
                                                  (define els-g (graphify g els-sets elss))
                                                  ; combine thn-g and els-g with g
                                                  (for ([thn-v (vertices thn-g)] [els-v (vertices els-g)])
                                                    (for ([adj-v (adjacent thn-g thn-v)])
                                                      (add-edge g thn-v adj-v))
                                                    (for ([adj-v (adjacent els-g els-v)])
                                                      (add-edge g els-v adj-v)))]
      [else "pass"]))
  g)
;;; End Build-Interference ;;;

;;; === Allocate-Registers === ;;;

(define (allocate-registers exp)
    (match exp
    [`(program (,vars ,graph) ,type ,instrs ...) (define new-names (color-graph graph (build-MoveG vars instrs) vars))
                                           `(program ,vars ,type ,@(map (lambda (instr) (update-name new-names instr)) instrs))]))

(define (prune-vars new-names vars)
  (filter (lambda (var) (> (hash-ref new-names var) (vector-length general-registers))) vars))

(define (update-name new-names instr)
  (match instr
    [`(,op (,type1 ,v1) (,type2 ,v2)) `(,op ,(if (and (equal? 'var type1) (< (hash-ref new-names v1) (vector-length general-registers)))
                                                 `(reg ,(vector-ref general-registers (hash-ref new-names v1)))
                                                 `(,type1 ,v1))
                                            ,(if (and (equal? 'var type2) (< (hash-ref new-names v2) (vector-length general-registers)))
                                                 `(reg ,(vector-ref general-registers (hash-ref new-names v2)))
                                                 `(,type2 ,v2)))]
    [`(,op (,type ,v)) `(,op ,(if (and (equal? 'var type) (< (hash-ref new-names v) (vector-length general-registers)))
                                  `(reg ,(vector-ref general-registers (hash-ref new-names v)))
                                  `(,type ,v)))]
    [`(if ,cnd ,elss ,els-sets ,thns ,thn-sets) `(if ,(update-name new-names cnd)
                                                     ,(map (lambda (instr) (update-name new-names instr)) elss)
                                                     ,(map (lambda (instr) (update-name new-names instr)) thns))]
    [else instr]))

(define (color-graph graph mgraph vars)
  ; constraints : (Var . Set of Numbers)
  (define constraints (make-hash))
  ; labels : (Var . Number)
  (define labels (make-hash))
  (define W vars)
  (define precount 0)
  (while (< precount (set-count caller-save))
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

;;; === Assign Homes === ;;;
(define (alloc-size vars) 
  (let ([x (* 8 (length vars))]) 
    (if (= (modulo x 16) 0) 
        x 
        (+ x 8))))  

(define (make-homes vars ctr) 
  (cond [(empty? vars) '()] 
        [else (cons (cons (car vars) ctr) (make-homes (cdr vars) (- ctr 8)))]))

(define (type->home arg alist)
  (match arg
    [`(,type ,val) (if (equal? type `var)
                       `(deref rbp ,(lookup val alist))
                       `(,type ,val))]
    [else arg])
  )

(define (assign-homes alist) 
  (lambda (exp) 
    (match exp
      [`(,op ,arg1 ,arg2) (list `(,op ,(type->home arg1 alist) ,(type->home arg2 alist)))]
      [`(,op ,arg) (list `(,op ,(type->home arg alist)))]
      [`(if ,cnd ,thn ,els) (list `(if ,@((assign-homes alist) cnd) ,(map-me (assign-homes alist) thn) ,(map-me (assign-homes alist) els)))] 
      [`(callq ,fn) (list exp)] 
      [`(program (,vars ...) ,type ,instrs ...) `(program ,(alloc-size vars) ,type ,@(values (map-me (assign-homes (make-homes vars -8)) instrs)))]))) 
;;; End Assign Homes ;;;

;;; === Lower Conditionals === ;;;

(define (lower-conditionals exp)
  (match exp
    [`(if (,cmp ,arg1 ,arg2) ,thns ,elss) (define thnlabel (gensym `then))
                                          (define endlabel (gensym `end))
                                          `((cmpq ,arg2 ,arg1)
                                            (jmp-if ,(cmp->cc cmp) ,thnlabel)
                                            ,@(map-me lower-conditionals elss)
                                            (jmp ,endlabel)
                                            (label ,thnlabel)
                                            ,@(map-me lower-conditionals thns)
                                            (label ,endlabel))]
    [`(program ,n ,type ,instrs ...) `(program ,n ,type ,@(values (map-me lower-conditionals instrs)))]
    [else `(,exp)]))

;;; End Lower Conditionals ;;;

;;; === Patch Instructions === ;;;
(define (patch-instructions exp)  
  (match exp  
    [`(addq (deref rbp ,n1) (deref rbp ,n2)) (list `(movq (deref rbp ,n1) (reg rax)) 
                                                   `(addq (reg rax) (deref rbp ,n2)))]
    [`(movq (deref rbp ,n1) (deref rbp ,n2)) (list `(movq (deref rbp ,n1) (reg rax)) `(movq (reg rax) (deref rbp ,n2)))]
    [`(cmpq (,type ,val) (int ,n)) (if (equal? type `int)
                                       (list `(movq (int ,n) (reg rax))
                                             `(cmpq (,type ,val) (reg rax)))
                                       (list `(cmpq (int ,n) (,type ,val))))]
    [`(program ,n ,instrs ...) `(program ,n ,@(values (map-me patch-instructions instrs)))]  
    [else (list exp)] 
    )) 
;;; End Patch Instructions ;;;

;;; === Print x86 === ;;;
(define store "\tpushq %r15\n\tpushq %r14\n\tpushq %r13\n\tpushq %r12\n\tpushq %rbx\n")
(define restore "\tpopq %rbx\n\tpopq %r12\n\tpopq %r13\n\tpopq %r14\n\tpopq %r15\n")

(define intro
  (lambda (n) (cond [(equal? (system-type) `macosx) (format (string-append "\t.globl _main\n_main:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n" store "\tsubq $~a, %rsp\n\n") n)]
                    [else (format (string-append "\t.globl main\nmain:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n" store "\tsubq $~a, %rsp\n\n") n)])))

(define conclusion
  (lambda (n) (cond [(equal? (system-type) `macosx) (format (string-append "\n\tmovq %rax, %rdi\n\tcallq _print_int\n\taddq $~a, %rsp\n\tmovq $0, %rax\n" restore "\tpopq %rbp\n\tretq") n)]
                    [(equal? (system-type) `windows) (format (string-append "\n\tmovq %rax, %rcx\n\tcallq print_int\n\taddq $~a, %rsp\n\tmovq $0, %rax\n" restore "\tpopq %rbp\n\tretq") n)]
                    [else (format (string-append "\n\tmovq %rax, %rdi\n\tcallq print_int\n\taddq $~a, %rsp\n\tmovq $0, %rax\n" restore "\tpopq %rbp\n\tretq") n)])))

(define (arg->string arg)
  (match arg
    [`(deref rbp ,n) (format "~a(%rbp)" n)]
    [`(reg ,r) (format "%~a" r)]
    [`(byte-reg ,r) (format "%~a" r)]
    [`(int ,n) (format "$~a" n)]
    [else (format "~a" arg)]))

(define (print-x86 exp)
  (match exp
    [`(jmp-if ,cc ,label) (format "\tj~a ~a\n" cc label)]
    [`(set ,e ,arg) (string-append "\tsete " (arg->string arg) "\n")]
    [`(,op ,arg1 ,arg2) (string-append "\t" (format "~a" op) " " (arg->string arg1) ", " (arg->string arg2) "\n")]
    [`(label ,name) (format "~a:\n" name)] 
    [`(,op ,arg) (string-append "\t" (format "~a" op) " " (arg->string arg) "\n")]   
    [`(callq ,fn) (if (equal? (system-type) `macosx) (format "\tcallq _~a\n" fn) (format "callq ~a\n" fn))]
    [`(program ,n (type ,t) ,instrs ...) (string-append (intro n) (foldr string-append "" (map print-x86 instrs)) (conclusion n))]))

;;; End Print x86 ;;;

;; Define the passes to be used by interp-tests and the grader
;; Note that your compiler file (or whatever file provides your passes)
;; should be named "compiler.rkt"
(define r0-passes
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ))

(define pe-arith-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
  ))

(define uniquify-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ))

(define flatten-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ))

(define select-instructions-pass
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ))

(define allocate-registers-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ))

(define lower-conditionals-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("lower-conditionals" ,lower-conditionals ,interp-x86)
     ))

(define patch-instructions-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("lower-conditionals" ,lower-conditionals ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ))

(define print-x86-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("lower-conditionals" ,lower-conditionals ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)
     ))

(define r2-passes
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("lower-conditionals" ,lower-conditionals ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)
     ))

(define r1-passes
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)
     ))