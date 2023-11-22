(define (domain llibres)
    (:requirements :strips :fluents :adl)

    (:types llibre mes - object
    )

    (:predicates
        (llegit ?x - llibre)
        (llibre_desitjat ?x - llibre)
        (predecesor ?x - llibre ?xp - llibre) ;x es predecesor de y
        (mes_actual ?x - mes)
        (mes_seguent ?x - mes ?y - mes) ;y es següent de x
    )

  (:action leer
    :parameters (?l - llibre ?m - mes)
    :precondition (and (not (llegit ?l))
                       (mes_actual ?m)
                       (or (llibre_desitjat ?l) (exists (?p - llibre) (and (predecesor ?p ?l)
                                                                           (llibre_desitjat ?p)))
                       )
                       (not (exists (?p - llibre) (and (predecesor ?l ?p)
                                                       (not (llegit ?p))))
                       )
                  )
    :effect (llegit ?l)
  )

  (:action avancar_mes
    :parameters (?m1 - mes ?m2 - mes)
    :precondition (and (mes_actual ?m1) 
                       (mes_seguent ?m1 ?m2)
                  )
    :effect (and (not (mes_actual ?m1))
                 (mes_actual ?m2)
            )
  )
)
