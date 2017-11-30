#lang racket

(require "../utilities.rkt")

(provide allocate-registers)

;;;;;;;;;;;;;;;;;;;;;;;;
;; Allocate Registers ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Takes the interference graph made by build-graph and assigns colors (numbers) to each ;
; variable. Variables with colors corresponding to registers are assigned to those reg- ;
; isters.                                                                               ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (allocate-registers prog)
  (match prog
    [`(program ((,vars ...) ,graph) ,type (defines ,defs ...) ,instrs ...)
     (define colors (color-graph (map car vars) graph))
     (define-values (regular-vars rootstack-vars) (update-and-split vars colors))
     `(program (,regular-vars ,rootstack-vars) ,type (defines ,@(map allocate-registers-define defs)) ,@(map (update-instr-factory colors) instrs))]))

(define (allocate-registers-define def)
  (match def
    [`(define (,fname) (,vars ,graph ,max-stack) ,instrs ...)
     (define colors (color-graph (map car vars) graph))
     (define-values (regular-vars rootstack-vars) (update-and-split vars colors))
     `(define (,fname) ((,regular-vars ,rootstack-vars) ,max-stack) ,@(map (update-instr-factory colors) instrs))]))

; Takes in list of vars (var . type)
; returns two lists:
; 1. list of regularstack vars (minus the ones which were converted to registers)
; 2. list of rootstack vars (minus the ones which were converted to registers)
(define (update-and-split vars colors)
  ; Split variables into a list of regular variables and a list of vector variables
  (define-values (regular-vars rootstack-vars)
    (map2 (lambda (var) (if (and (list? (cdr var)) (equal? (cadr var) 'Vector))
                            (values '() `(,@(car var)))
                            (values `(,@(car var)) '())))
        
          ; Filter out variables which have been assigned to registers
          (filter (lambda (var) (>= (hash-ref colors (car var)) (vector-length general-registers))) vars)))

  ; Filter out empty lists from a list
  (define (remove-empty ls) (filter (lambda (x) (not (equal? '() x))) ls))
  (values (remove-empty regular-vars) (remove-empty rootstack-vars)))

; Updates an instruction based on the new colors
(define (update-instr instr colors)
  (match instr
    [`(if ,cnd ,thns ,thns-sets ,elss ,elss-sets)
     `(if ,(update-instr cnd colors) ,(map (update-instr-factory colors) thns) ,(map (update-instr-factory colors) elss))]

    [`(,op ,args ...)
     `(,op ,@(map (lambda (arg) (arg->reg arg colors)) args))]))

; Converts an argument 
(define (arg->reg arg colors)
  (match arg
    [`(var ,var) (if (< (hash-ref colors var) (vector-length general-registers))
                     `(reg ,(vector-ref general-registers (hash-ref colors var)))
                     arg)]
    [else arg]))

; Generates update-instr lambdas with colors curried in.
(define (update-instr-factory colors)
  (lambda (instr) (update-instr instr colors)))

; Assign colors to variables based on an interference graph
(define (color-graph vars graph)

  ; Maps variables/registers to the set of constraints they have
  (define saturations (make-hash))

  ; Maps variables to their color
  (define colors (make-hash))

  ; Saturate nodes based on registers
  (for ([reg general-registers])
    ; if given register exists in the interference graph
    (if (hash-ref graph (register->color reg) #f)
        ; for every adjacent variable to that register
        (for ([var (adjacent graph (register->color reg))])
          ; update the saturations of that variable to contain that register
          (hash-update! saturations var (lambda (saturation-set) (set-union (set (register->color reg)) saturation-set)) (set (register->color reg))))
        (void)))

  ; Iterate through vars
  (while (not (empty? vars))
    ; sort the variables by constraints decreasing
    (set! vars (sort vars (lambda (v1 v2) (> (set-count (hash-ref saturations v1 (set))) (set-count (hash-ref saturations v2 (set)))))))

    ; pop the first var off the list of vars
    (define current-var (car vars))
    (set! vars (cdr vars))

    ; start with color 0
    (define current-color 0)

    ; iterate through the colors until we find one not saturating the current-var
    (while (set-member? (hash-ref saturations current-var (set)) current-color)
      (set! current-color (add1 current-color)))

    ; assign current-var current-color
    (hash-set! colors current-var current-color)

    ; add the new color to the constraints of all adjacent variables to i (in the interference-graph)
    (for ([var (adjacent graph current-var)])
      (hash-update! saturations var (lambda (saturation-set) (set-union (set current-color) saturation-set)) (set current-color))))

  ; Return the mapping between variables and colors
  colors)