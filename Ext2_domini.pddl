(define (domain ext2_domini)
  (:requirements :strips :adl)
  (:types
    llibre mes - object
  )

  (:predicates
    (llegit ?l - llibre)
    (llegint ?l - llibre)
    (llegint_mes_anterior ?l - llibre)
    (mes_seguent ?m1 - mes ?m2 - mes)
    (mes_actual ?m - mes)
    (llibre_desitjat ?l - llibre)
    (predecesor ?lp - llibre ?l1 - llibre)
    (paralel ?l1 - llibre ?l2 - llibre)
  )

  (:action llegir
    :parameters (?l - llibre ?m - mes)
    :precondition (and (mes_actual ?m) (not (or (llegint ?l) (llegit ?l) (llegint_mes_anterior ?l)))
      (not (exists
          (?p - llibre)
          (and (predecesor ?p ?l) (not (or (llegit ?p) (llegint_mes_anterior ?p)))))))
    :effect (llegint ?l)
  )

  (:action avancar_de_mes
    :parameters (?m - mes ?m2 - mes)
    :precondition (and (mes_actual ?m) (mes_seguent ?m ?m2) (not (exists
          (?l - llibre)
          (and (llegint_mes_anterior ?l) (exists
              (?p - llibre)
              (and (paralel ?l ?p) (not (or (llegint ?p) (llegint_mes_anterior ?p) (llegit ?p)))))))))

    :effect (and (not (mes_actual ?m)) (mes_actual ?m2)
      (forall
        (?l - llibre)
        (when
          (llegint_mes_anterior ?l)
          (and (not (llegint_mes_anterior ?l))(llegit ?l))))
      (forall
        (?l - llibre)
        (when
          (llegint ?l)
          (and (not (llegint ?l)) (llegint_mes_anterior ?l))))
    )
  )
)