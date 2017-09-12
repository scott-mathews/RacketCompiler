
(+ 45 (let ([a 3])
        (let ([b (+ 3 5)])
          (let ([c (+ b a)])
            (let ([a (- c)])
              (+ b a))))))