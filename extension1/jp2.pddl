(define (problem jp1) (:domain hotel)
    (:objects
    	h0 h1 - habitacion
    	r1 r2 r3 - reserva
        r12 r22 r32  - reserva
    )
    (:init
        (= (reservas_libres) 18) ;num reservas totales

        (= (start_day r1) 1)
        (= (start_day r2) 2)
        (= (start_day r3) 3)
        (= (start_day r12) 1)
        (= (start_day r22) 2)
        (= (start_day r32) 3)

        (= (end_day r1) 1)
        (= (end_day r2) 2)
        (= (end_day r3) 3)
        (= (end_day r12) 1)
        (= (end_day r22) 2)
        (= (end_day r32) 3)

        (= (tamano h0) 2)
        (= (tamano h1) 1)
        (= (tamano h1) 1)
        (= (tamano r1) 1)
        (= (tamano r2) 1)
        (= (tamano r3) 1)
        (= (tamano r12) 2)
        (= (tamano r22) 2)
        (= (tamano r32) 2)
    )

    (:goal (or (forall (?res - reserva) (visitada ?res))))
    (:metric minimize (reservas_libres))
)