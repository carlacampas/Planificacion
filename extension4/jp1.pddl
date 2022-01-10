(define (problem jp1) (:domain hotel)
    (:objects    
        h1  h2  h3  h4 - habitacion
        r1  r2  r3  r4 r5 r6 r7 r8 - reserva
    )
    (:init
        (= (cantidad_reservas) 0)
        (= (xctj_ocupacion) 0)
        (= (habitaciones_unused) 4)

        (= (start_day r1) 1)
        (= (start_day r2) 2)
        (= (start_day r3) 3)
        (= (start_day r4) 4)
        (= (start_day r5) 5)
        (= (start_day r6) 6)
        (= (start_day r7) 7)
        (= (start_day r8) 8)
        
        (= ( end_day r1) 1)
        (= ( end_day r2) 2)
        (= ( end_day r3) 3)
        (= ( end_day r4) 4)
        (= ( end_day r5) 5)
        (= ( end_day r6) 6)
        (= ( end_day r7) 7)
        (= ( end_day r8) 8)
        
        (= (tamano h1) 1)
        (= (tamano h2) 1)
        (= (tamano h3) 1)
        (= (tamano h4) 1)
    
        (= (tamano r1) 1)
        (= (tamano r2) 1)
        (= (tamano r3) 1)
        (= (tamano r4) 1)
        (= (tamano r5) 1)
        (= (tamano r6) 1)
        (= (tamano r7) 1)
        (= (tamano r8) 1)
    )

    (:goal 
        (or (forall (?res - reserva) 
                (or 
                    (visitada ?res) 
                )
            )
        )
    )
    (:metric maximize (+ (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (habitaciones_unused) 4)) (/ (cantidad_reservas) 8 )))
)
