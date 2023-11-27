(define (problem ext2_problema_catalunya)
  (:domain ext2_domini)

  ;JOC DE PROVES COMPLEX AMB NOMS DE POBLES DELS PAÏSOS CATALANS
  (:objects
    catalunya solsona figueres centelles barcelona cervera girona illesbalears ferreries eivissa santantoni palma mao arta paisvalencia alacant castello vinaros xativa gandia sagunt paisoscatalans - llibre
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

    (not (llegit paisoscatalans))

    (predecessor (arta illesbalears))
    (predecessor (ferreries illesbalears))
    (predecessor (eivissa illesbalears))
    (predecessor (santantoni illesbalears))
    (predecessor (palma illesbalears))
    (predecessor (mao illesbalears))

    (predecessor (vinaros paisvalencia))
    (predecessor (alacant paisvalencia))
    (predecessor (castello paisvalencia))
    (predecessor (xativa paisvalencia))
    (predecessor (gandia paisvalencia))
    (predecessor (sagunt paisvalencia))

    (predecessor (cervera catalunya))
    (predecessor (solsona catalunya))
    (predecessor (figueres catalunya))
    (predecessor (centelles catalunya))
    (predecessor (barcelona catalunya))
    (predecessor (girona catalunya))

    (predecessor (catalunya paisoscatalans))
    (predecessor (illesbalears paisoscatalans))
    (predecessor (paisvalencia paisoscatalans))

    (paralel (ferreries figueres))
    (paralel (eivissa centelles))
    (paralel (santantoni barcelona))
    (paralel (palma cervera))

    (llibre_desitjat alacant)
    (llibre_desitjat paisoscatalans)
  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)
