(define (domain ext0_domini)
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
        :effect (and (llibre_desitjat ?x))
    )



    (:action llegir_llibre
        :parameters (?x - llibre ?m - mes)
        :precondition (and (llibre_desitjat ?x)
                        (not (llegit ?x))
                        (or (and (not (exists (?y - llibre) (predecesor ?y ?x))) (= (posicio ?m) 0)) 
                            (exists (?y - llibre ?prev_m - mes) 
                            (or (and (predecesor ?y ?x) (llegit_en_mes ?y ?prev_m) (= (posicio ?m) (+ (posicio ?prev_m) 1))) 
                            (and (predecesor ?y ?x) (llegit_abans ?y) (= (posicio ?m) 0)))))) 
        :effect (and (llegit_en_mes ?x ?m) (llegit ?x))
    )



)
