;; Alan Sisouphone 2018

(define title "Scheme Point-of-Sale")
(define instructions "Starting transaction. Type -1 to exit POS")
(define tax 0.065)

(define (startpos)
  (display "Enter First Price: $")
  (let ((x (read)))
    (pos x)
  )
)


(define (displayTotals x)
  (newline)
  (display "POS ending... now printing totals")
  (newline)
  (display "Subtotal: $")
  (display x)(newline)
  (display "Tax: $")
  (display tax)(newline)
  (display "Total: $")
  (display (+ x (* x tax)))
)

(define (pos n)
  (display "Enter: $")
  (let ((x (read)))
  (if (eq? x -1)
    (displayTotals n)
  (pos(+ x n))
  ))
)

(newline)
(display title)(newline)
(display instructions)(newline)
(startpos)
