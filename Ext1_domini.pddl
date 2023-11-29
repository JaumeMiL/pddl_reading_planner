(define (domain ext1_domini)
    (:requirements :strips :fluents :adl)

    (:types   llibre mes - objectes)

    (:functions (posicio ?m - mes))


    (:predicates
        (llegit ?x - llibre)
        (llegit_en_mes ?x - llibre ?y - mes)
        (llibre_desitjat ?x - llibre)
        (predecesor ?x - llibre ?y - llibre)
        (llegit_abans ?x - llibre)
        
    )
     
    (:action llibre_necessari
        :parameters (?x - llibre)
        :precondition (and (not (llibre_desitjat ?x)) 
                        (exists (?y - llibre) (and (llibre_desitjat ?y) 
                        (predecesor ?x ?y))))
        :effect (llibre_desitjat ?x)
    )


    (:action llegir_llibre_amb_predecesor
        :parameters (?x - llibre ?m - mes)
        :precondition (and (llibre_desitjat ?x)
                            (not (llegit ?x))
                            (not(llegit_abans ?x))
                            (not (exists (?y - llibre) (and (predecesor ?y ?x) (not (llegit ?y)))))
                            (exists (?y - llibre ?prev_m - mes) 
                                (and (predecesor ?y ?x) (llegit_en_mes ?y ?prev_m) (> (posicio ?m) (posicio ?prev_m))) 
                            )  )
        :effect (and (llegit_en_mes ?x ?m) (llegit ?x))
    )

    (:action llegir_llibre_sense_predecesor_o_precedit_per_un_llegit_abans
        :parameters (?x - llibre ?m - mes)
        :precondition (and (llibre_desitjat ?x)
                            (not (llegit ?x))
                            (not(llegit_abans ?x))
                            (or(not (exists (?y - llibre) (predecesor ?y ?x)))(exists (?y - llibre) (and (predecesor ?y ?x) (llegit_abans ?y)) ))
                            (or (= (posicio ?m) 0)
                                (exists (?y - llibre ?m2 - mes) 
                                    (or (and (predecesor ?x ?y) (llegit_en_mes ?y ?m2) (< (posicio ?m) (posicio ?m2))
                                    (and (predecesor ?y ?x) (llegit_abans ?y) (= (posicio ?m) 0)))))))
                                       
                                
        :effect (and (llegit_en_mes ?x ?m) (llegit ?x))
    )
)

