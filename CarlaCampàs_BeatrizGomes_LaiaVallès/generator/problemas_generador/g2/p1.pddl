(define (problem p1) (:domain hotel)
	(:objects
		h0 - habitacion
		r0 r1 r2 r3 - reserva
	)
	(:init
		(= (reservas_libres) 4)
		(= (start_day r0) 5)
		(= (start_day r1) 8)
		(= (start_day r2) 26)
		(= (start_day r3) 10)
		(= (end_day r0) 30)
		(= (end_day r1) 12)
		(= (end_day r2) 28)
		(= (end_day r3) 11)
		(= (tamano h0) 3)
		(= (tamano r0) 2)
		(= (tamano r1) 2)
		(= (tamano r2) 2)
		(= (tamano r3) 2)
		(= (pref_orient_no_servida) 3)
		(= (orientacion h0) 3)
		(= (orientacion r0) 2)
		(= (orientacion r1) 3)
		(= (orientacion r2) -1)
		(= (orientacion r3) 1)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (+ (pref_orient_no_servida) (* (reservas_libres) 3)))
)