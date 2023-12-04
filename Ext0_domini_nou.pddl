(define (domain ext0_domini)
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
        (llegit_abans ?x - llibre)
        (llibre_desitjat ?l - llibre)
        (predecesor ?lp - llibre ?l - llibre)
    )

    (:action llegir
        :parameters (?l - llibre ?m - mes)
        :precondition (and
            (not (llegit ?l))
            (not (llegint ?l))
            (not (llegint_mes_anterior ?l))
            (mes_actual ?m)
            (not (exists
                    (?p - llibre)
                    (and
                        (predecesor ?p ?l)
                        (not (llegit ?p))
                        (not (llegint_mes_anterior ?p))
                    )
                ))
        )
        :effect (and (llegint ?l))
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
            (forall
                (?l - llibre)
                (when
                    (llegint_mes_anterior ?l)
                    (and
                        (llegit ?l)
                        (not (llegint_mes_anterior ?l))
                    )
                )
            )
            (forall
                (?l - llibre)
                (when
                    (llegint ?l)
                    (and
                        (not (llegint ?l))
                        (llegint_mes_anterior ?l)
                    )
                )
            )
        )
    )
)