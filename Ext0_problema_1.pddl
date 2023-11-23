(define (problem ext0_problema_1)
  (:domain llibres)
 
  (:objects
    pilarsterra1 rondallamallorquina1 poesia1 nesbo mecanoscrit placadiamant - no_te_predecesor
    pilarsterra2 pilarsterra3 rondallamallorquina2 rondallamallorquina3 rondallamallorquina4 rondallamallorquina5 poesia2 poesia3 - te_predecesor
    gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
  )

  (:init
    ;afegim la saga de pilars de la terra i ens volem llegir el segon llibre, hauria de llegir el primer i no el tercer
    (not (llegit pilarsterra1))
    (not (llegit pilarsterra2))
    (not (llegit pilarsterra3))
    (predecesor pilarsterra1 pilarsterra2)
    (predecesor pilarsterra2 pilarsterra3)
    (llibre_desitjat pilarsterra2)

    ;volem llegir alguns dels llibres però d'altres si no són necessaris, no
    (not (llegit rondallamallorquina1))
    (not (llegit rondallamallorquina2))
    (not (llegit rondallamallorquina3))
    (not (llegit rondallamallorquina4))
    (not (llegit rondallamallorquina5))
    (predecesor rondallamallorquina1 rondallamallorquina2)
    (predecesor rondallamallorquina2 rondallamallorquina3)
    (predecesor rondallamallorquina3 rondallamallorquina4)
    (predecesor rondallamallorquina4 rondallamallorquina5)
    (llibre_desitjat rondallamallorquina1)
    (llibre_desitjat rondallamallorquina2)
    (llibre_desitjat rondallamallorquina5)

    ;Saga de Poesia: només volem llegir el primer
    (not (llegit poesia1))
    (not (llegit poesia2))
    (not (llegit poesia3))
    (predecesor poesia1 poesia2)
    (predecesor poesia2 poesia3)
    (llibre_desitjat poesia1)

    ;Saga de Nesbo: volem llegir el llibre
    (not (llegit nesbo))
    (llibre_desitjat nesbo)

    ;mecanoscrit: no volem llegir el llibre
    (not (llegit mecanoscrit))

    ;placa diamant: volem llegir el llibre però ja el tenim llegit
    (llegit placadiamant)
    (llibre_desitjat placadiamant)

    ;mesos
    (mes_seguent gener febrer)
    (mes_seguent febrer març)
    (mes_seguent març abril)
    (mes_seguent abril maig)
    (mes_seguent maig juny)
    (mes_seguent juny juliol)
    (mes_seguent juliol agost)
    (mes_seguent agost setembre)
    (mes_seguent setembre octubre)
    (mes_seguent octubre novembre)
    (mes_seguent novembre desembre)
    (mes_seguent desembre gener)
    (mes_actual gener)
  )

  (:goal (forall (?llibre - llibre)
             (or (not (llibre_desitjat ?llibre))
                 (llegit ?llibre))))
)
