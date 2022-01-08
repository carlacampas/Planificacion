(define (problem ext1_jp1) (:domain hotel)
    (:objects
    	h0 h1 - habitacion
    	r1 r2 r3 r4 r5 - reserva
    )
    (:init
        (= (reservas_libres) 5) ;num dias totales (30) * num habitaciones
        (= (pref_orient_no_servida) 5)

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
        (= (tamano h0) 1)
        (= (tamano h1) 1)
        (= (tamano r1) 1)
        (= (tamano r2) 1)
        (= (tamano r3) 1)
        (= (tamano r4) 1)
        (= (tamano r5) 1)

        (= (orientacion_habitacion h0) 0)
        (= (orientacion_habitacion h1) 2)

        ; n = 0 / s = 1 / e = 2 / o = 3
        (= (pref_orientacion r1) 0)
        (= (pref_orientacion r2) 0)
        (= (pref_orientacion r3) 0)
        (= (pref_orientacion r4) 0)
        (= (pref_orientacion r5) 0)
    )

    (:goal (or (forall (?res - reserva) (visitada ?res))))
    ;(:metric minimize (+ (dias_libres) (pref_orient_no_servida)))
    (:metric minimize (+ (/ (pref_orient_no_servida) 5) (* (/ (reservas_libres) 5) 3)))
    ;;; dias libres esta en funcion de hab * dias
    ;;; pref_orient_no_servida esta en funcion de reservas
)