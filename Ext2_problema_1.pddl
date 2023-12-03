(define (problem ext2_problema_1)
  (:domain ext2_domini)
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

  (:goal
    (forall
      (?llibre - llibre)
      (or (not (llibre_desitjat ?llibre))
        (llegit ?llibre)))
  )
)