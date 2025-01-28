(= (sort-list $x ()) (:: $x ()))

(= (sort-list $x (:: $y $ys))
   (if (<= $x $y)
       (:: $x (:: $y $ys))
       (:: $y (sort-list $x $ys))))

(= (sorter ()) ()) ; If it is empty return empty

(= (sorter (:: $x $xs)) (sort-list $x (sorter $xs)))

; Example: [12, 3, 9, -2] -> [-2, 3, 9, 12]
! (sorter (:: 12 (:: 3 (:: 9 (:: -2 ())))))
