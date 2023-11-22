(define (problem ext1_problema_1)
  (:domain llibres_ext1)
 
  (:objects
    llibre1 llibre2 llibre3 llibre5 llibre7 - no_te_predecesor
    llibre4 llibre6 llibre8 - te_predecesor
    gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
  )

  (:init
    (not (llegit llibre1))
    (not (llegit llibre2))
    (not (llegit llibre3))
    (not (llegit llibre4))
    (not (llegit llibre5))
    (predecesor llibre2 llibre4)
    (predecesor llibre4 llibre6)
    (predecesor llibre6 llibre8)
    (llibre_desitjat llibre4)
    (llibre_desitjat llibre5)
    (llibre_desitjat llibre6)
    (llibre_desitjat llibre7)
    (llibre_desitjat llibre8)
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
    (mes_seguent desembre gener)
    (mes_actual gener)
  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)