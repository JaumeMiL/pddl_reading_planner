(define (domain ext2_domini)
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




    (:action llegir_llibre
        :parameters (?x - llibre ?m - mes)
        :precondition (and (llibre_desitjat ?x)
                            (not (llegit ?x))
                            (forall (?y - llibre) (or (not (predecesor ?y ?x)) (llegit ?y)))
                            (forall (?z - llibre) (or (not (paralel ?z ?x)) (llegit ?z)))
                            (or (= (posicio ?m) 0)
                                (exists (?y - llibre ?prev_m - mes) 
                                    (or (and (predecesor ?y ?x)  (llegit_en_mes ?y ?prev_m) (= (posicio ?m) (+ (posicio ?prev_m) 1)))
                                        (and (paralel ?y ?x)  (llegit_en_mes ?y ?prev_m)  (= (posicio ?m) (posicio ?prev_m)) )
                                        (and (or (predecesor ?y ?x) (paralel ?y ?x)) (llegit_abans ?y) (= (posicio ?m) 0))))))
        :effect (and (llegit_en_mes ?x ?m) (llegit ?x))
    )




)
