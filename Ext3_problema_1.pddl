(define (problem ext3_problema_1) 
  (:domain ext3_domini)
  (:objects
  agathachristie1 agathachristie2 agathachristie3 agathachristie4 agathachristie5 kenfollet1 kenfollet2 kenfollet3 - llibre
  gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
)

(:init
  ; Mes
  (mes_actual gener)
  (mes_seguent gener febrer) 
  (mes_seguent febrer març)
  (mes_seguent març abril)
  (mes_seguent abril maig)
  (mes_seguent maig juny)
  (mes_seguent juny juliol)
  (mes_seguent juliol agost)
  (mes_seguent agost setembre)
  (mes_seguent setembre octubre)
  (mes_seguent octubre novembre)
  (mes_seguent novembre desembre)

(= (pag_llegides gener) 0)
(= (pag_llegides febrer) 0)
(= (pag_llegides març) 0)
(= (pag_llegides abril) 0)
(= (pag_llegides maig) 0)
(= (pag_llegides juny) 0)
(= (pag_llegides juliol) 0)
(= (pag_llegides agost) 0)
(= (pag_llegides setembre) 0)
(= (pag_llegides octubre) 0)
(= (pag_llegides novembre) 0)
(= (pag_llegides desembre) 0)

 (= (pagines agathachristie1) 150)
  (= (pagines agathachristie2) 75)
  (= (pagines agathachristie3) 200)
  (= (pagines agathachristie4) 600)
  (= (pagines agathachristie5) 80)
  (= (pagines kenfollet2) 150)
  (= (pagines kenfollet1) 600)
  (= (pagines kenfollet3) 799)

    ; Predecesors

    (predecesor agathachristie1 agathachristie2)
    (predecesor agathachristie2 agathachristie3)
    (predecesor agathachristie3 agathachristie4)
    (predecesor agathachristie4 agathachristie5)

    (predecesor kenfollet1 kenfollet2)
    (predecesor kenfollet2 kenfollet3)
    
    (paralel kenfollet1 agathachristie5)
    (paralel agathachristie5 kenfollet1)

    ; Llibres que ja hem llegit
    (llegit agathachristie1)
    ; Llibres que desitgem llegir
    (llibre_desitjat agathachristie4)
    (llibre_desitjat kenfollet3)
)

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)
