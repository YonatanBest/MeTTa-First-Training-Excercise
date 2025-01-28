(= (binary-map $f $const ()) ())
(= (binary-map $f $const (:: $x $xs)) 
   (:: ($f $x $const) (binary-map $f $const $xs)))

(= (add-num $a $b) (+ $a $b))

; Example: [10, 1, 2, 3] -> [11, 12, 13]
!(binary-map add-num 10 (:: 1 (:: 2 (:: 3 ()))))