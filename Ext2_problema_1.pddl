(define (problem ext2_problema_1)
  (:domain ext2_domini)

 ;STARWARS ÉS PARALEL AMB STARTREK

 ;ELS DIFERENS PLANETES SÓN PARALELS DEL LLIBRE TERRA, QUE ÉS EL PREDECESOR DE PLANETES
 ;PLANETOIDES I ESTRELLES SÓN LLIBRES PARALELS DE PLANETES
 ;EL SOL ÉS UN PREDECESOR DE ESTRELES I PLUTÓ ÉS UN PREDECESOR DE PLANETOIDES 

  (:objects
    planetes estrelles planetoides terra mart júpiter neptú plutó sol - llibre
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

    (llegit mart)
    (not (llegit terra))
    (not (llegit júpiter))
    (not (llegit neptú))

    (not (llegit sol))

    (not (llegit plutó))

    (not (llegit planetes))
    (not (llegit estrelles))
    (not (llegit planetoides))

    (predecesor terra planetes)
    (predecesor sol estrelles)
    (predecesor plutó planetoides)

    (paralel mart terra)
    (paralel júpiter terra)
    (paralel neptú terra)

    (paralel estrelles planetes)
    (paralel planetoides planetes)

    (llibre_desitjat planetoides)

  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)