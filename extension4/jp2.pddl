(define (problem jp1) (:domain hotel)
    (:objects    
        h1  h2 h3 - habitacion
        r1  r2  r3 - reserva
    )
    (:init
        (= (cantidad_reservas) 0)
        (= (xctj_ocupacion) 0)
        (= (habitaciones_unused) 3)

        (= (start_day r1) 1)
        (= (start_day r2) 2)
        (= (start_day r3) 3)
        
        (= ( end_day r1) 1)
        (= ( end_day r2) 2)
        (= ( end_day r3) 3)
        
        
        (= (tamano h1) 2)
        (= (tamano h2) 3)
        (= (tamano h3) 2)
       
        (= (tamano r1) 3)
        (= (tamano r2) 2)
        (= (tamano r3) 2)
        
    )

    (:goal 
        (or (forall (?res - reserva) 
                (or 
                    (visitada ?res) 
                )
            )
        )
    )
    (:metric maximize (+ (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (habitaciones_unused) 4)) (/ (cantidad_reservas) 3 )))
)
