#lang racket
(let ([ b 5])
  (let ([c b])
    (let ([d c])
      (+ 2 d))))