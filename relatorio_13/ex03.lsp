(defstruct garota-magica
  nome
  escuridao
  bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota-magica :nome (garota-magica-nome g)
                      :escuridao (if (>= quantidade (garota-magica-escuridao g))
                                     0
                                     (- (garota-magica-escuridao g) quantidade))
                      :bruxas (garota-magica-bruxas g)))

(defun main ()
  (let* ((ana (make-garota-magica :nome "Ana" :escuridao 30 :bruxas 5))
         (bia (make-garota-magica :nome "Bia" :escuridao 55 :bruxas 8))
         (carol (make-garota-magica :nome "Carol" :escuridao 10 :bruxas 2))
         (grupo (list ana bia carol))
         (duda (make-garota-magica :nome "Duda" :escuridao 5 :bruxas 0))
         (grupo-novo (cons duda grupo)))
    (format t "Grupo:~%")
    (format t "Escuridao total: ~a~%" (escuridao-total grupo))
    (format t "Bruxas derrotadas: ~a~%" (total-de-bruxas grupo))

    (format t "Depois que a Duda entrou:~%")
    (format t "Escuridao do grupo antigo: ~a~%" (escuridao-total grupo))
    (format t "Escuridao do grupo novo: ~a~%" (escuridao-total grupo-novo))
    (format t "Garotas no grupo novo: ~a~%" (length grupo-novo))

    (let ((bia-limpa (purifica bia 40)))
      (format t "Bia usou uma Semente da Aflicao:~%")
      (format t "Joia da Bia original: ~a~%" (garota-magica-escuridao bia))
      (format t "Joia da Bia nova: ~a~%" (garota-magica-escuridao bia-limpa)))))

(main)
