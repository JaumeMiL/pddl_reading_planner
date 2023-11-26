(define (domain llibres)
    (:requirements :strips :fluents :adl)

    (:types   llibre mes - objectes)

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
                        (predecesor ?x ?y))))
        :effect (llibre_desitjat ?x)
    )


    (:action llegir_llibre
        :parameters (?x - llibre ?m - mes)
        :precondition (and (llibre_desitjat ?x)
                            (not (llegit ?x))
                            (or (not (exists (?y - llibre) (or (paralel ?y ?x) (predecesor ?y ?x)))) 
                                (not (exists (?y - llibre) (or (and (predecesor ?y ?x) (not (llegit ?y))) (and (paralel ?y ?x)(not (llegit ?y)))))))
                            (or (= (posicio ?m) 0)
                                (exists (?y - llibre ?m2 - mes) 
                                    (or (or (and (predecesor ?y ?x) (llegit_en_mes ?y ?m2) (= (posicio ?m) (+ (posicio ?m2) 1))) 
                                        (and (predecesor ?y ?x) (llegit_abans ?y) (= (posicio ?m) 0))) 
                                        (or (and (paralel ?y ?x) (llegit_en_mes ?y ?m2) (or (= (posicio ?m) (+ (posicio ?m2) 1)) (= (posicio ?m) (posicio ?m2))) ) 
                                        (and (paralel ?y ?x) (llegit_abans ?y) (= (posicio ?m) 0)))
                                        )
                                        )))
        :effect (and (llegit_en_mes ?x ?m) (llegit ?x))
    )



)
