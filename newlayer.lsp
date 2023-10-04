(defun c:nlr (/ layername)
  (setq layername (getstring "\n enter layer name: "))
  (if (not (tblsearch "LAYER" layername))
    (command "_.LAYER" "_Make" layername "")
  )
  (princ)
)
; انشاء لير اسرع
