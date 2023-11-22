(define (problem ext0_problema_1)
  (:domain llibres1)
  
  (:objects
    llibre1 llibre2 llibre3 llibre5 - no_te_predecesor
    llibre4 llibre6 - te_predecesor
  )

  (:init
    (not (llegit llibre1))
    (not (llegit llibre2))
    (not (llegit llibre3))
    (not (llegit llibre4))
    (not (llegit llibre5))
    (not (llegit llibre6))
    (predecesor llibre2 llibre6)
    (predecesor llibre3 llibre4)
    (llibre_desitjat llibre4)
    (llibre_desitjat llibre5)
    (llibre_desitjat llibre6)
  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)
