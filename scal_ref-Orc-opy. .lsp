(defun c:scr (/ ss pt)
  (setq ss (ssget ));يطلب من المستخدم اختيار 
  (if ss
    (progn
      (setq pt (getpoint "\nSelect reference point: ")) ; طلب من المستخدم اختيار نقطة
      (command "_.scale" ss "" pt "r" pt) ; قم مباشرة اختار النقطة مرتين scale Reference
    )
  )
)

(defun c:scc (/ ss pt)
  (setq ss (ssget ));يطلب من المستخدم اختيار 
  (if ss
    (progn
      (setq pt (getpoint "\nSelect reference point: ")) ; طلب من المستخدم اختيار نقطة
      (command "_.scale" ss "" pt "c") ; قم مباشرة اختار النقطة مرتين scale Reference
    )
  )
)
