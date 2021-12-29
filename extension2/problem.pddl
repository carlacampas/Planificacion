(define (problem nivel_basico) (:domain hotel)
    (:objects
    	h0 h1 - habitacion
    	r1 r2 r3 r4 r5 r6 r7 r8 r9 - reserva
        r12 r22 r32 r42 r52 r62 r72 r82 r92 - reserva
    )
    (:init
        (= (dias_libres) 60) ;num dias totales (30) * num habitaciones

        (= (start_day r1) 1)
        (= (start_day r2) 2)
        (= (start_day r3) 3)
        (= (start_day r4) 4)
        (= (start_day r5) 5)
        (= (start_day r6) 6)
        (= (start_day r7) 7)
        (= (start_day r8) 8)
        (= (start_day r9) 9)
        (= (start_day r12) 1)
        (= (start_day r22) 2)
        (= (start_day r32) 3)
        (= (start_day r42) 4)
        (= (start_day r52) 5)
        (= (start_day r62) 6)
        (= (start_day r72) 7)
        (= (start_day r82) 8)
        (= (start_day r92) 9)

        (= (end_day r1) 2)
        (= (end_day r2) 2)
        (= (end_day r3) 3)
        (= (end_day r4) 4)
        (= (end_day r5) 5)
        (= (end_day r6) 6)
        (= (end_day r7) 7)
        (= (end_day r8) 8)
        (= (end_day r9) 9)
        (= (end_day r12) 1)
        (= (end_day r22) 2)
        (= (end_day r32) 3)
        (= (end_day r42) 4)
        (= (end_day r52) 5)
        (= (end_day r62) 6)
        (= (end_day r72) 7)
        (= (end_day r82) 8)
        (= (end_day r92) 9)

        ;(reservado r112 d1)
        (= (tamano_habitacion h0) 2)
        (= (tamano_habitacion h1) 1)
        (= (tamano_reserva r1) 1)
        (= (tamano_reserva r2) 1)
        (= (tamano_reserva r3) 1)
        (= (tamano_reserva r4) 1)
        (= (tamano_reserva r5) 1)
        (= (tamano_reserva r6) 1)
        (= (tamano_reserva r7) 1)
        (= (tamano_reserva r8) 1)
        (= (tamano_reserva r9) 1)
        (= (tamano_reserva r12) 2)
        (= (tamano_reserva r22) 2)
        (= (tamano_reserva r32) 2)
        (= (tamano_reserva r42) 2)
        (= (tamano_reserva r52) 2)
        (= (tamano_reserva r62) 2)
        (= (tamano_reserva r72) 2)
        (= (tamano_reserva r82) 2)
        (= (tamano_reserva r92) 2)
    )

    (:goal (or (forall (?res - reserva) (visitada ?res))))
    (:metric minimize (dias_libres))
)