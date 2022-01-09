(define (problem jp1) (:domain hotel)
    (:objects
    	h0 h1 - habitacion
    	r1 r2 r3 r4 r5 - reserva
    )
    (:init
        (= (reservas_libres) 5) 
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

        (= (tamano h0) 1)
        (= (tamano h1) 1)
        (= (tamano r1) 1)
        (= (tamano r2) 1)
        (= (tamano r3) 1)
        (= (tamano r4) 1)
        (= (tamano r5) 1)

        (= (orientacion h0) 0)
        (= (orientacion h1) 2)

        (= (orientacion r1) 0)
        (= (orientacion r2) 0)
        (= (orientacion r3) 0)
        (= (orientacion r4) 0)
        (= (orientacion r5) 0)
    )

    (:goal (or (forall (?res - reserva) (visitada ?res))))
    ;(:metric minimize (+ (dias_libres) (pref_orient_no_servida)))
    (:metric minimize (+ (pref_orient_no_servida) (* (reservas_libres) 3)))
    ;;; reservas libres en funcion de reservas
    ;;; pref_orient_no_servida esta en funcion de reservas
)