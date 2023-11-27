(define (problem ext2_problema_0)
  (:domain ext2_domini)

 ;STARWARS ÉS PARALEL AMB STARTREK

  (:objects
    starwars startrek - llibre
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

    ;cas molt simple de paralels
    
    (not (llegit startrek))
    (not (llegit starwars))
    (paralel starwars startrek)

    (llibre_desitjat starwars)

  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)