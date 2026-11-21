(defstruct erva
  nome
  preco-por-grama
  toxicidade)

(defun classifica-erva (erva)
  (cond ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")))

(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
  (format nil "~a - R$~,2f por grama - ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))

(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      (format nil "Maomao vai testar a ~a nela mesma antes" (erva-nome erva))
      (format nil "~a liberada para o paciente" (erva-nome erva))))

(defun main ()
  (let ((ervas (list (make-erva :nome "Camomila" :preco-por-grama 0.5 :toxicidade 1)
                     (make-erva :nome "Arruda" :preco-por-grama 1.2 :toxicidade 5)
                     (make-erva :nome "Comigo-ninguem-pode" :preco-por-grama 3 :toxicidade 9))))
    (format t "Ervas do estoque:~%")
    (dolist (e ervas)
      (format t "~a~%" (descreve-erva e))
      (format t "~a~%" (aviso e)))
    (format t "Dose de 20g de camomila: R$~,2f~%"
            (preco-da-dose (car ervas) 20))))

(main)
