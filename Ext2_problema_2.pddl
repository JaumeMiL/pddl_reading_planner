(define (problem ext2_problema_catalunya)
  (:domain ext2_domini)

  ;JOC DE PROVES COMPLEX AMB NOMS DE POBLES DELS PAÏSOS CATALANS
  (:objects
    catalunya solsona figueres centelles barcelona cervera girona illesbalears ferreries eivissa santantoni palma mao arta paisvalencia alacant castello vinaros xativa gandia sagunt - llibre
    gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
  )

  (:init
    ; POSICIONS DELS MESOS
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

    (llegit_abans arta)
    (llegit_abans vinaros)
    (llegit_abans cervera)

    (not (llegit catalunya))
    (not (llegit solsona))
    (not (llegit figueres))
    (not (llegit centelles))
    (not (llegit barcelona))
    (not (llegit girona))

    (not (llegit illesbalears))
    (not (llegit ferreries))
    (not (llegit eivissa))
    (not (llegit santantoni))
    (not (llegit palma))
    (not (llegit mao))
    
    (not (llegit paisvalencia))
    (not (llegit alacant))
    (not (llegit castello))
    (not (llegit xativa))
    (not (llegit gandia))
    (not (llegit sagunt))


    (predecesor arta illesbalears)
    (predecesor ferreries illesbalears)
    (predecesor eivissa illesbalears)
    (predecesor santantoni illesbalears)
    (predecesor palma illesbalears)
    (predecesor mao illesbalears)

    (predecesor vinaros paisvalencia)
    (predecesor alacant paisvalencia)
    (predecesor castello paisvalencia)
    (predecesor xativa paisvalencia)
    (predecesor gandia paisvalencia)
    (predecesor sagunt paisvalencia)

    (predecesor cervera catalunya)
    (predecesor solsona catalunya)
    (predecesor figueres catalunya)
    (predecesor centelles catalunya)
    (predecesor barcelona catalunya)
    (predecesor girona catalunya)

    (paralel ferreries catalunya)
    (paralel eivissa centelles)
    (paralel santantoni barcelona)
    (paralel palma cervera)

    (llibre_desitjat alacant)
    (llibre_desitjat paisvalencia)
    (llibre_desitjat illesbalears)
    (llibre_desitjat catalunya)

  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)

