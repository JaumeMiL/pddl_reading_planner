(define (problem ext3_problema_2)
  (:domain ext3_domini)

  (:objects
    pilarsterra1 rondallamallorquina1 poesia1 nesbo mecanoscrit placadiamant pilarsterra2 pilarsterra3 rondallamallorquina2 rondallamallorquina3 rondallamallorquina4 rondallamallorquina5 poesia2 poesia3 - llibre
    gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
  )

  (:init

    ; Mes
    (mes_actual gener)
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

    (= (pag_llegides gener) 0)
    (= (pag_llegides febrer) 0)
    (= (pag_llegides març) 0)
    (= (pag_llegides abril) 0)
    (= (pag_llegides maig) 0)
    (= (pag_llegides juny) 0)
    (= (pag_llegides juliol) 0)
    (= (pag_llegides agost) 0)
    (= (pag_llegides setembre) 0)
    (= (pag_llegides octubre) 0)
    (= (pag_llegides novembre) 0)
    (= (pag_llegides desembre) 0)

    (= (pagines pilarsterra1) 650)
    (= (pagines pilarsterra2) 150)
    (= (pagines pilarsterra3) 50)
    (= (pagines rondallamallorquina1) 100)
    (= (pagines rondallamallorquina2) 300)
    (= (pagines rondallamallorquina3) 50)
    (= (pagines rondallamallorquina4) 25)
    (= (pagines rondallamallorquina5) 40)
    (= (pagines poesia1) 600)
    (= (pagines poesia2) 40)
    (= (pagines poesia3) 10)
    (= (pagines nesbo) 750)
    (= (pagines mecanoscrit) 100)
    (= (pagines placadiamant) 100)

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

    (paralel placadiamant mecanoscrit)
    (paralel mecanoscrit placadiamant)
    (paralel nesbo rondallamallorquina5)
    (paralel rondallamallorquina5 nesbo)

  )

  (:goal
    (forall
      (?llibre - llibre)
      (or (not (llibre_desitjat ?llibre))
        (llegit ?llibre)))
  )
)