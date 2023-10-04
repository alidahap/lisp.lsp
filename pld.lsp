(defun c:pld (/ p1 p2 ang)
  (setq p1 (getpoint "\nSpecify first point: "))
  (while (setq p2 (getpoint "\nSpecify next point or press Enter to finish: " p1))
    (command "_.pline" p1 p2 "")
    (setq ang (angle p1 p2))
    (if (or (= ang 0.0) (= ang pi) (= ang (/ pi 2)) (= ang (/ (* 3 pi) 2)))
      (command "_.dimlinear" p1 p2 "_non" 
               (polar p1 
                      (+ ang (/ pi 2)) 
                      0.55))
      (command "_.dimaligned" p1 p2 "_non" 
               (polar p1 
                      (+ ang (/ pi 2)) 
                      0.55))
    )
    (setq p1 p2)
  )
)

;رسم خطوط بولي لاين باستمرار مع اضافة البعد للخط تلقائياً