(define (problem ext1_problema_1)
  (:domain llibres_ext1)
 

 ;IMAGINEM QUE ELS SEGÜENTS LLIBRES SERVEIXEN PER ENTENDRE INDIVIDUALMENT EL FUNCIONAMENT DE CADA DISPOSITIU
 ;I GLOBALMENT PER ENTENDRE EL FUNCIONAMENT DE TOTS ELS DISPOSITIUS. SENSE ENTENDRE INDIVIDUALMENT EL FUNCIONAMENT 
 ;DE CADA DISPOSITIU NO ES POT ENTENDRE EL FUNCIONAMENT DE TOTS ELS DISPOSITIUS 
  (:objects
    iphone galaxy huaweiphone macbook zenbook chromebook samsungtv appletv googletv - no_te_predecesor
    telefons portatils televisors dispositius - te_predecesor
    gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
  )

  (:init
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
    
    ;mesos
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
    (mes_seguent desembre gener)
    (mes_actual gener)
  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)