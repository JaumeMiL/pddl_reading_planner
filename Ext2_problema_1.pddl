(define (problem ext2_problema_1)
  (:domain ext2_domini)
  (:objects
    Harry_Potter_1 Harry_Potter_2 Harry_Potter_3 Harry_Potter_4 Harry_Potter_5 Star_Wars_1 Star_Wars_2 Star_Wars_3 - llibre
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
    (= (posicio juliol) 6)
    (= (posicio agost) 7)
    (= (posicio setembre) 8)
    (= (posicio octubre) 9)
    (= (posicio novembre) 10)
    (= (posicio desembre) 11)

    ; Predecesors
    (predecesor Harry_Potter_1 Harry_Potter_2)
    (predecesor Harry_Potter_2 Harry_Potter_3)
    (predecesor Harry_Potter_3 Harry_Potter_4)
    (predecesor Harry_Potter_4 Harry_Potter_5)
    (predecesor Star_Wars_1 Star_Wars_2)
    (predecesor Star_Wars_2 Star_Wars_3)
    (paralel Star_Wars_1 Harry_Potter_5)

    (llegit Harry_Potter_1)
    (not (llegit Harry_Potter_2))
    (not (llegit Harry_Potter_3))
    (not (llegit Harry_Potter_4))
    (not (llegit Harry_Potter_5))
    (not (llegit Star_Wars_1))
    (not (llegit Star_Wars_2))
    (not (llegit Star_Wars_3))


    (llibre_desitjat Harry_Potter_4)
    (llibre_desitjat Star_Wars_3)
  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)
