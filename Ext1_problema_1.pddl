(define (problem ext1_problema_1)
  (:domain ext1_domini)
 
  (:objects
    pitons serpblanca cobra escurco serp llangardaix sargantanapitiusa sargantana tortuga covid grip hepatitis malaria reptils_expert malalties_expert - llibre
    gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
  )

  (:init

    ;mesos
    (= (posicio gener) 0)
    (= (posicio febrer) 1)
    (= (posicio març) 2)
    (= (posicio abril) 3)
    (= (posicio maig) 4)
    (= (posicio juny) 5)
    (= (posicio juliol)6)
    (= (posicio agost) 7)
    (= (posicio setembre) 8)
    (= (posicio octubre) 9)
    (= (posicio novembre) 10)
    (= (posicio desembre) 11)

    ;per llegir el llibre de reptils, primer s'han d'haver llegit tots els llibres de cada animal
    (not (llegit sargantana))
    (not (llegit serp))
    (not (llegit llangardaix))
    (not (llegit tortuga))
    (not (llegit pitons))
    (not (llegit serpblanca))
    (llegit cobra)
    (not (llegit escurco))
    (not (llegit sargantanapitiusa))

    (predecesor pitons serp)
    (predecesor serpblanca serp)
    (predecesor cobra serp)
    (predecesor escurco serp)
    (predecesor llangardaix sargantana)
    (predecesor sargantanapitiusa sargantana)

    (predecesor serp reptils_expert)
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
  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)