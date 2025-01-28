(= (sum-multiples-3-or-5 $N)
    (if(== $N 0) 0 (if (or (== (% $N 3) 0) (== (% $N 5) 0))
        (+ $N (sum-multiples-3-or-5 (- $N 1))) (sum-multiples-3-or-5 (- $N 1))))
)
(= (main $N) (sum-multiples-3-or-5 (- $N 1)))
; Example: 9 -> 14
!(main 9)