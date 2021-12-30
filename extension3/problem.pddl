(define (problem extension3) (:domain hotel)
    (:objects
    	h0 h1 - habitacion
    	r1 r2 r3 r4 r5 - reserva
    )
    (:init
        (= (dias_libres) 60) ;num dias totales (30) * num habitaciones
        (= (camas_libres) 3) ;sum(tamano_habit)

        (= (start_day r1) 1)
        (= (start_day r2) 2)
        (= (start_day r3) 3)
        (= (start_day r4) 4)
        (= (start_day r5) 5)

        (= (end_day r1) 1)
        (= (end_day r2) 2)
        (= (end_day r3) 3)
        (= (end_day r4) 4)
        (= (end_day r5) 5)

        ;(reservado r112 d1)
        (= (tamano_habitacion h0) 1)
        (= (tamano_habitacion h1) 2)
        (= (tamano_reserva r1) 1)
        (= (tamano_reserva r2) 1)
        (= (tamano_reserva r3) 2)
        (= (tamano_reserva r4) 1)
        (= (tamano_reserva r5) 2)

    
    )

    (:goal (or (forall (?res - reserva) (visitada ?res))))
    (:metric minimize (+ (/ (camas_libres) 2) (* (/ (dias_libres) 60) 3)))
)