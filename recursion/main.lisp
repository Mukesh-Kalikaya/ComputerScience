(defun sum(n)
  (cond
    ((<= n 0) 0)
    (t (+ n (sum (- n 1))))
    )
  )

(defun main () (format t "~A~%" (sum 5)))
(lambda (list) (list* :sb-core-compression list))
(sb-ext:save-lisp-and-die "main" :toplevel #'main :executable t :compression t)
