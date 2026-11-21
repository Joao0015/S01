(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva  "Agressiva")
    (:leviata    "Leviata: mantenha distancia")
    (otherwise   "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a - ~a - ~am - ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros))
                 catalogo))

(defparameter *catalogo*
  (list
   (make-criatura :nome "Peixe-palhaco" :bioma "Recife raso"
                  :profundidade 10 :perigo :inofensiva)
   (make-criatura :nome "Agua-viva" :bioma "Floresta de algas"
                  :profundidade 60 :perigo :inofensiva)
   (make-criatura :nome "Tubarao" :bioma "Mar aberto"
                  :profundidade 150 :perigo :agressiva)
   (make-criatura :nome "Enguia" :bioma "Caverna submersa"
                  :profundidade 300 :perigo :agressiva)
   (make-criatura :nome "Lula gigante" :bioma "Fossa"
                  :profundidade 900 :perigo :leviata)))

(defun main ()
  (format t "Criaturas escaneadas:~%")
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))

  (let ((fundas (abaixo-de 100 *catalogo*)))
    (format t "Abaixo de 100m:~%")
    (dolist (texto (mapcar #'descreve-criatura fundas))
      (format t "~a~%" texto))
    (format t "Quantidade abaixo de 100m: ~a~%" (length fundas))))

(main)
