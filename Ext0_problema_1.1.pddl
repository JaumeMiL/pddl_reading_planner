(define (problem ext0_problema_2)
  (:domain llibres)
  
  (:objects
    harrypotter1 tintin1 starwars1 pilarsterra1 startrek1 harrypotter2 harrypotter3 harrypotter4 tintin2 pilarsterra2 pilarsterra3 startrek2 startrek3 - llibre
    gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
  )

  (:init
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


    ;volem llegir els tres llibres de star trek
    (not (llegit startrek1))
    (not (llegit startrek2))
    (not (llegit startrek3))
    (predecesor startrek1 startrek2)
    (predecesor startrek2 startrek3)
    (llibre_desitjat startrek1)
    (llibre_desitjat startrek2)
    (llibre_desitjat startrek3)

    ;ens hem llegit el primer llibre de harry potter i volem llegir el quart
    (llegit_abans harrypotter1)
    (predecesor harrypotter1 harrypotter2)
    (predecesor harrypotter2 harrypotter3)
    (predecesor harrypotter3 harrypotter4)
    (llibre_desitjat harrypotter4)
  

    ;ens volem llegir només el primer de tintin per tant no hauria de llegir el segon
    (not (llegit tintin1))
    (not (llegit tintin2))
    (predecesor tintin1 tintin2)
    (llibre_desitjat tintin1)

    ;afegim un llibre que ni té predecessors ni volem llegir
    (not (llegit starwars1))

    ;afegim la saga de pilars de la terra i ens volem llegir el segon llibre, hauria de llegir el primer i no el tercer
    (not (llegit pilarsterra1))
    (not (llegit pilarsterra2))
    (not (llegit pilarsterra3))
    (predecesor pilarsterra1 pilarsterra2)
    (predecesor pilarsterra2 pilarsterra3)
    (llibre_desitjat pilarsterra2)


  )
  
  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)
