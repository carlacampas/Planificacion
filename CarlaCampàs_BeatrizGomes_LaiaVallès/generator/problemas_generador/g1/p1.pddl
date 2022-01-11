(define (problem p1) (:domain hotel)
	(:objects
		h0 - habitacion
		r0 r1 r2 r3 - reserva
	)
	(:init
		(= (reservas_libres) 4)
		(= (start_day r0) 28)
		(= (start_day r1) 13)
		(= (start_day r2) 5)
		(= (start_day r3) 15)
		(= (end_day r0) 29)
		(= (end_day r1) 27)
		(= (end_day r2) 29)
		(= (end_day r3) 17)
		(= (tamano h0) 3)
		(= (tamano r0) 1)
		(= (tamano r1) 1)
		(= (tamano r2) 2)
		(= (tamano r3) 2)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (reservas_libres))
)