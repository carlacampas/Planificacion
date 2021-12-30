(define (problem extension3) (:domain hotel)
    (:objects
    	h1 h2 h3 h4 - habitacion
    	r1 r2 r3 r4 - reserva
        r11 r22 r33 r44 - reserva
        ;r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 - reserva
    )
    (:init
        (= (dias_libres) 120) ;num dias totales (30) * num habitaciones
        ;(= (camas_libres) 14) ;sum(tamano_habit)
        (= (suma_porcentaje) 0)
        (= (cantidad_reservas) 0)
        ;(= (camas_reserva) 0)

        (= (start_day r1) 1)
        (= (start_day r2) 1)
        (= (start_day r3) 1)
        (= (start_day r4) 1)
        (= (start_day r11) 16)
        (= (start_day r22) 16)
        (= (start_day r33) 16)
        (= (start_day r44) 16)
        ;(= (start_day r8) 16)
        ;(= (start_day r9) 16)
        ;(= (start_day r10) 5)
        ;(= (start_day r11) 1)
        ;(= (start_day r12) 2)
        ;(= (start_day r13) 3)
        ;(= (start_day r14) 4)
        ;(= (start_day r15) 5)
        ;(= (start_day r16) 1)
        ;(= (start_day r17) 2)
        ;(= (start_day r18) 3)
        ;(= (start_day r19) 4)

        (= (end_day r1) 15)
        (= (end_day r2) 15)
        (= (end_day r3) 15)
        (= (end_day r4) 15)
        (= (end_day r11) 30)
        (= (end_day r22) 30)
        (= (end_day r33) 30)
        (= (end_day r44) 30)
        ;(= (end_day r10) 5)
        ;(= (end_day r11) 1)
        ;(= (end_day r12) 2)
        ;(= (end_day r13) 3)
        ;(= (end_day r14) 4)
        ;(= (end_day r15) 5)
        ;(= (end_day r16) 1)
        ;(= (end_day r17) 2)
        ;(= (end_day r18) 3)
        ;(= (end_day r19) 4)

        (= (tamano_habitacion h1) 1)
        (= (tamano_habitacion h2) 2)
        (= (tamano_habitacion h3) 3)
        (= (tamano_habitacion h4) 4)


        (= (tamano_reserva r1) 1)
        (= (tamano_reserva r2) 2)
        (= (tamano_reserva r3) 3)
        (= (tamano_reserva r4) 4)
        (= (tamano_reserva r11) 1)
        (= (tamano_reserva r22) 2)
        (= (tamano_reserva r33) 3)
        (= (tamano_reserva r44) 4)
        ;(= (tamano_reserva r10) 1)
        ;(= (tamano_reserva r11) 2)
        ;(= (tamano_reserva r12) 1)
        ;(= (tamano_reserva r13) 2)
        ;(= (tamano_reserva r14) 1)
        ;(= (tamano_reserva r15) 2)
        ;(= (tamano_reserva r16) 1)
        ;(= (tamano_reserva r17) 1)
        ;(= (tamano_reserva r18) 1)
        ;(= (tamano_reserva r19) 2)
    )

    (:goal (or (forall (?res - reserva) (visitada ?res))))
    (:metric minimize (+ (/ (suma_porcentaje) (cantidad_reservas)) (* (/ (dias_libres) 60) 3)))
)
