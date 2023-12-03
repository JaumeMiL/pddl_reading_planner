(define (problem ext2_problema_catalunya)
  (:domain ext2_domini)

  ;JOC DE PROVES COMPLEX AMB NOMS DE POBLES DELS PAÏSOS CATALANS
  (:objects
    catalunya solsona figueres centelles barcelona cervera girona illesbalears ferreries eivissa santantoni palma mao arta paisvalencia alacant castello vinaros xativa gandia sagunt provinciagirona provinciabarcelona provinciatarragona provincialleida provinciaalacant provinciacastello provinciavalencia provinciamallorca provinciamenorca proviniciaeivissa - llibre
    gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
  )

  (:init
    ; POSICIONS DELS MESOS
    (mes_actual gener)
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

    (llegit arta)
    (llegit vinaros)
    (llegit cervera)

    (not (llegit provinciagirona))
    (not (llegit provinciabarcelona))
    (not (llegit provinciatarragona))
    (not (llegit provincialleida))
    (not (llegit provinciaalacant))
    (not (llegit provinciacastello))
    (not (llegit provinciavalencia))
    (not (llegit provinciamallorca))
    (not (llegit provinciamenorca))
    (not (llegit proviniciaeivissa))

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

    (predecesor arta provinciamallorca)
    (predecesor ferreries provinciamenorca)
    (predecesor eivissa proviniciaeivissa)
    (predecesor santantoni proviniciaeivissa)
    (predecesor palma provinciamallorca)
    (predecesor mao provinciamenorca)

    (predecesor vinaros provinciacastello)
    (predecesor alacant provinciaalacant)
    (predecesor castello provinciacastello)
    (predecesor xativa provinciavalencia)
    (predecesor gandia provinciavalencia)
    (predecesor sagunt provinciacastello)

    (predecesor cervera provincialleida)
    (predecesor solsona provincialleida)
    (predecesor figueres provinciagirona)
    (predecesor centelles provinciabarcelona)
    (predecesor barcelona provinciabarcelona)
    (predecesor girona provinciagirona)

    (predecesor provinciagirona catalunya)
    (predecesor provinciabarcelona catalunya)
    (predecesor provinciatarragona catalunya)
    (predecesor provincialleida catalunya)
    (predecesor provinciaalacant paisvalencia)
    (predecesor provinciacastello paisvalencia)
    (predecesor provinciavalencia paisvalencia)
    (predecesor provinciamallorca illesbalears)
    (predecesor provinciamenorca illesbalears)
    (predecesor proviniciaeivissa illesbalears)

    (paralel catalunya arta)
    (paralel arta catalunya)
    (paralel provinciaalacant illesbalears)
    (paralel illesbalears provinciaalacant)

    (llibre_desitjat paisvalencia)
    (llibre_desitjat illesbalears)
    (llibre_desitjat catalunya)

  )

  (:goal
    (forall
      (?llibre - llibre)
      (or (not (llibre_desitjat ?llibre))
        (llegit ?llibre)))
  )
)