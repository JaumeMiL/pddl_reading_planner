(define (domain llibres)
    (:requirements :strips :fluents :adl)

    (:types llibre mes - objectes)

    (:functions (posicio ?m - mes))


    (:predicates
        (llegit ?x - llibre)
        (llegit_en_mes ?x - llibre ?y - mes)
        (llibre_desitjat ?x - llibre)
        (predecesor ?x - llibre ?y - llibre)
        (llegit_abans ?x - llibre)
        (paralel ?x - llibre ?y - llibre)
        
    )

    (:action llibre_necessari
        :parameters (?x - llibre)
        :precondition (and (not (llibre_desitjat ?x)) 
                        (exists (?y - llibre) (and (llibre_desitjat ?y) 
                        (or (predecesor ?x ?y) (paralel ?x ?y)))))
        :effect (llibre_desitjat ?x)
    )



    (:action llegir
        :parameters (?x - llibre ?m - mes)
          :precondition (and (llibre_desitjat ?x)
                        (not (llegit ?x))
                        (forall (?y - llibre) (or (not (predecesor ?y ?x)) (llegit ?y)))
                        (forall (?y - llibre) (or (not (paralel ?y ?x)) (llegit ?y)))
                        (forall (?y - llibre ?prev_m - mes) 
                                (or (not (predecesor ?y ?x)) 
                                    (not (llegit_en_mes ?y ?prev_m)) 
                                    (< (posicio ?prev_m) (posicio ?m))))
                        (forall (?y - llibre ?par_m - mes) 
                               (or (not (paralel ?x ?y)) 
                                   (llegit ?y) 
                                   (or (= (posicio ?par_m) (posicio ?m))
                                       (< (posicio ?par_m) (posicio ?m))
                                       (> (posicio ?par_m) (posicio ?m))
                                   )))
                        )
        
        :effect (and (llegit_en_mes ?x ?m) (llegit ?x))
    )
)