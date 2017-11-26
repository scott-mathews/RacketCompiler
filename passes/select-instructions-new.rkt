#lang racket

; Converts C_n language to x86_n language
(define (select-instructions exp)
  (match exp
    [`(program (,vars ...) ,type (defines ,defs ...) ,stmts ...)
     `(program (,vars ...) ,type (defines ,@(map select-instructions defs)) ,@(convert-statements stmts))]))

(define (convert-statements stmts)
  (foldr append '() (map convert-stmt stmts)))

(define (convert-stmt stmt)
  (match stmt
    [`(assign ,var ,exp) ...]
    [`(collect ,int) ...]
    [`(if (,cmp ,arg ,arg) (,stmts ...) (,stmts ...)) ...]
    [`(return ,arg) ...]))

; converts an exp form from its C to its x86 equivalent.
(define (convert-exp exp)
  (match exp
    [(? arg?) (convert-arg exp)]
    [`(,op ,args ...) ]))

(define (convert-arg arg)
  (match arg
    [(? symbol?) `(var arg)]
    [(? boolean?) `(int ,(if arg 1 0))]))

(define (arg? exp)
  (or (boolean? exp) (fixnum? exp) (symbol? exp)))