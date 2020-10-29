#lang sicp

(#%require rackunit)

(define (square x)
  (* x x))

(define (sumsquares a b)
  (+ (square a) (square b)))

(define (sqsumlargest a b c)
  (cond
    ((and (>= a c) (>= b c)) (sumsquares a b))
    ((and (>= c a) (>= b c)) (sumsquares c b))
    ((and (>= a b) (>= c b)) (sumsquares a c))))
  
(check-equal? (sqsumlargest 5 4 6) 61)