(define (problem ext1_problema_1)
  (:domain ext1_domini)

  ;IMAGINEM QUE ELS SEGÜENTS LLIBRES SERVEIXEN PER ENTENDRE INDIVIDUALMENT EL FUNCIONAMENT DE CADA DISPOSITIU
  ;I GLOBALMENT PER ENTENDRE EL FUNCIONAMENT DE TOTS ELS DISPOSITIUS. SENSE ENTENDRE INDIVIDUALMENT EL FUNCIONAMENT 
  ;DE CADA DISPOSITIU NO ES POT ENTENDRE EL FUNCIONAMENT DE TOTS ELS DISPOSITIUS 
  (:objects
    iphone galaxy huaweiphone macbook zenbook chromebook samsungtv appletv googletv telefons portatils televisors dispositius - llibre
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

    ;mesos pel nou domini
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

    ;cas molt complex amb diferents llibres entrellaçats (amb predecessors) entre si
    (llegit iphone)
    (not (llegit galaxy))
    (not (llegit huaweiphone))

    (llegit macbook)
    (not (llegit zenbook))
    (not (llegit chromebook))

    (llegit appletv)
    (not (llegit samsungtv))
    (not (llegit googletv))

    (not (llegit telefons))
    (not (llegit portatils))
    (not (llegit televisors))
    (not (llegit dispositius))

    (predecesor iphone telefons)
    (predecesor galaxy telefons)
    (predecesor huaweiphone telefons)
    (predecesor macbook portatils)
    (predecesor zenbook portatils)
    (predecesor chromebook portatils)
    (predecesor appletv televisors)
    (predecesor samsungtv televisors)
    (predecesor googletv televisors)
    (predecesor telefons dispositius)
    (predecesor portatils dispositius)
    (predecesor televisors dispositius)

    (llibre_desitjat dispositius)

  )

  (:goal
    (forall
      (?llibre - llibre)
      (or (not (llibre_desitjat ?llibre))
        (llegit ?llibre)))
  )
)