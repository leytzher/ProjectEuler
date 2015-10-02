;;; project Euler
;;; Multiples of 3 and 5

;; macro to generalize multiple function
(defmacro multiple (num mult)
  `(if (eql (mod ,num ,mult) 0)
       (list ,num)))

;; function to validate is a number is multiple of 3 or 5
(defun mult-3-or-5 (num)
  (or (and (multiple num 3) (multiple num 5))
       num))

;; generate a list of consecutive numbers starting from 1
(defun mylist(n)
  (let ((lst ()))
    (dotimes (i n)
      (setf lst (cons (1+ i) lst)))
    (reverse  lst)))

;; get the sum of the multiples of 3 or 5
; nil values are removed and then a sum is applied
(defun getsum (n)
  (apply #'+ (remove nil (mapcar #'mult-3-or-5 (mylist n)))))
    






