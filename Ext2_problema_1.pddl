(define (problem Problema_nou) 
  (:domain prova_nou_domini)
  (:objects
  Harry_Potter_1
  Harry_Potter_2
  Harry_Potter_3
  Harry_Potter_4
  Harry_Potter_5
  Star_Wars_1
  Star_Wars_2
  Star_Wars_3
  - llibre
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
    ; Predecesors
    (predecesor Harry_Potter_5 Harry_Potter_4)
    (predecesor Harry_Potter_4 Harry_Potter_3)
    (predecesor Harry_Potter_3 Harry_Potter_2)
    (predecesor Harry_Potter_2 Harry_Potter_1)
    (predecesor Star_Wars_3 Star_Wars_2)
    (predecesor Star_Wars_2 Star_Wars_1)
    (paralel Star_Wars_1 Harry_Potter_5)
    (paralel Harry_Potter_5 Star_Wars_1)

    ; Llibres que ja hem llegit
    (llegit Harry_Potter_1)
    ; Llibres que desitgem llegir
    (llibre_desitjat Harry_Potter_4)
    (llibre_desitjat Star_Wars_3)
)

(:goal (and
    (llegit Harry_Potter_4)
    (llegit Star_Wars_3)
	)
)

)
