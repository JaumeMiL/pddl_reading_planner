(define (problem ext2_problema_1)
  (:domain llibres)

 ;STARWARS ÉS PARALEL AMB STARTREK

 ;ELS DIFERENS PLANETES SÓN PARALELS DEL LLIBRE TERRA, QUE ÉS EL PREDECESOR DE PLANETES
 ;PLANETOIDES I ESTRELLES SÓN LLIBRES PARALELS DE PLANETES
 ;EL SOL ÉS UN PREDECESOR DE ESTRELES I PLUTÓ ÉS UN PREDECESOR DE PLANETOIDES 

  (:objects
    planetes estrelles planetoides terra mart jupiter neptu pluto sol - llibre
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

    ;cas complex amb diferents llibres entrellaçats (predecessors i paralels) entre si

    (not (llegit terra))
    (not (llegit jupiter))
    (not (llegit neptu))

    (not (llegit sol))

    (not (llegit pluto))

    (not (llegit planetes))
    (not (llegit estrelles))
    (not (llegit planetoides))

    (predecesor planetes terra)
    (predecesor terra pluto)
    (predecesor pluto jupiter)


    (paralel jupiter planetoides)

    (paralel estrelles planetes)
    (predecesor neptu planetoides)

    (llibre_desitjat planetoides)

  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)