(define (problem jp2) (:domain hotel)
    (:objects
    	h0 h1 h2 - habitacion
    	r1 r2 r3 r4 - reserva
    )
    (:init
        (= (reservas_libres) 5) 
        (= (pref_orient_no_servida) 5)

        (= (start_day r1) 5)
        (= (start_day r2) 5)
        (= (start_day r3) 5)
        (= (start_day r4) 5)

        (= (end_day r1) 10)
        (= (end_day r2) 10)
        (= (end_day r3) 10)
        (= (end_day r4) 10)

        (= (tamano h0) 1)
        (= (tamano h1) 1)
        (= (tamano h2) 1)
        (= (tamano r1) 1)
        (= (tamano r2) 1)
        (= (tamano r3) 1)
        (= (tamano r4) 1)

        (= (orientacion h0) 0)
        (= (orientacion h1) 1)
        (= (orientacion h2) 2)

        ; n = 0 / s = 1 / e = 2 / o = 3
        (= (orientacion r1) 0)
        (= (orientacion r2) 1)
        (= (orientacion r3) 2)
        (= (orientacion r4) 3)
    )

    (:goal (or (forall (?res - reserva) (visitada ?res))))
    ;(:metric minimize (+ (dias_libres) (pref_orient_no_servida)))
    (:metric minimize (+ (pref_orient_no_servida) (* (reservas_libres) 3)))
    ;;; reservas libres en funcion de reservas
    ;;; pref_orient_no_servida esta en funcion de reservas
)