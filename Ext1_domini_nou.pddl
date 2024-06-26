(define (domain ext1_domini)
    (:requirements :strips :typing :adl)
    (:types
        llibre mes - object
    )
    (:functions
        (posicio ?m - mes)
    )

    (:predicates
        (llegit ?l - llibre)
        (llegint ?l - llibre)
        (llegint_mes_anterior ?l - llibre)
        (mes_actual ?m - mes)
        (mes_seguent ?m1 - mes ?m2 - mes)
        (llibre_desitjat ?l - llibre)
        (predecesor ?lp - llibre ?p - llibre)
    )

    (:action llegir
        :parameters (?l - llibre ?m - mes)
        :precondition (and
            (mes_actual ?m)
            (not (llegit ?l))
            (not (llegint_mes_anterior ?l))
            (not (llegint ?l))
            (not (exists (?p - llibre) ;no existeix predecesor no llegit
                (and
                    (predecesor ?p ?l)
                    (not (llegit ?p))
                    (not (llegint_mes_anterior ?p))
                )
            ))
        )
        :effect (and
            (llegint ?l)
        )
    )

    (:action avancar_mes
        :parameters (?m - mes ?m2 - mes)
        :precondition (and
            (mes_actual ?m)
            (mes_seguent ?m ?m2)
        )
        :effect (and
            (not (mes_actual ?m))
            (mes_actual ?m2)
            (forall (?l - llibre)
                (when (or (llegint_mes_anterior ?l) (llegint ?l))
                    (and
                        (llegit ?l)
                        (not (llegint_mes_anterior ?l))
                        (not (llegint ?l))
                    )
                )
            )
        )
    )
)