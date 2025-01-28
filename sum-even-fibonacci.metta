(= (main $max)
    (compute 0 1 $max 0))

(= (compute $a $b $max $answer)
    (if (>= $a $max)
        $answer
        (compute $b (+ $a $b) $max 
            (if (== (% $a 2) 0)
                (+ $a $answer)
                $answer))))

; Example: 12 -> 10
!(main 12)