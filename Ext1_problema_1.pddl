(define (problem ext1_problema_1)
  (:domain llibres_ext1)
 
  (:objects
    serp llangardaix sargantana tortuga covid grip hepatitis malaria - no_te_predecesor
    reptils_expert malalties_expert - te_predecesor
    gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
  )

  (:init

    ;per llegir el llibre de reptils, primer s'han d'haver llegit tots els llibres de cada animal
    (not (llegit sargantana))
    (not (llegit serp))
    (not (llegit llangardaix))
    (not (llegit tortuga))
    (predecesor serp reptils_expert)
    (predecesor llangardaix reptils_expert)
    (predecesor sargantana reptils_expert)
    (predecesor tortuga reptils_expert)
    (llibre_desitjat reptils_expert)

    ;volem llegir malalties_expert però ja en sabem prou d'algunes malalties
    (llegit covid)
    (llegit grip)
    (not (llegit hepatitis))
    (not (llegit malaria))
    (predecesor covid malalties_expert)
    (predecesor grip malalties_expert)
    (predecesor hepatitis malalties_expert)
    (predecesor malaria malalties_expert)
    (llibre_desitjat malalties_expert)

    ;els altres casos més trivials es proven a l'extensió 0

    ;mesos
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