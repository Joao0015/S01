(defstruct dominio
  nome
  elemento
  dificuldade
  mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro   1.5)
    (:hydro     1.2)
    (otherwise  1)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
  (let* ((possiveis (remove-if-not (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
                                   lista))
         (textos (mapcar (lambda (d)
                           (format nil "~a - ~a de mora"
                                   (dominio-nome d) (round (recompensa-final d))))
                         possiveis)))
    textos))

(defun main ()
  (let ((dominios (list (make-dominio :nome "Templo do fogo" :elemento :pyro
                                      :dificuldade 2 :mora 800)
                        (make-dominio :nome "Caverna congelada" :elemento :cryo
                                      :dificuldade 4 :mora 1200)
                        (make-dominio :nome "Torre da tempestade" :elemento :electro
                                      :dificuldade 3 :mora 1000)
                        (make-dominio :nome "Lago escondido" :elemento :hydro
                                      :dificuldade 1 :mora 600)
                        (make-dominio :nome "Vale dos ventos" :elemento :anemo
                                      :dificuldade 5 :mora 1500))))
    (format t "Rota ate dificuldade 3:~%")
    (dolist (texto (rota dominios 3))
      (format t "~a~%" texto))

    (format t "Mora total de todos os dominios: ~a~%"
            (round (reduce #'+ (mapcar #'recompensa-final dominios))))

    (let ((copia (copy-dominio (car dominios))))
      (setf (dominio-mora copia) 2000)
      (format t "Mora da copia: ~a~%" (dominio-mora copia))
      (format t "Mora do original: ~a~%" (dominio-mora (car dominios))))))

(main)
