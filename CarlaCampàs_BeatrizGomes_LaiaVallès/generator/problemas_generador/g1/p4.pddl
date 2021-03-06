(define (problem p4) (:domain hotel)
	(:objects
		h0 h1 h2 h3 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 - reserva
	)
	(:init
		(= (reservas_libres) 16)
		(= (start_day r0) 3)
		(= (start_day r1) 12)
		(= (start_day r2) 14)
		(= (start_day r3) 21)
		(= (start_day r4) 29)
		(= (start_day r5) 19)
		(= (start_day r6) 10)
		(= (start_day r7) 20)
		(= (start_day r8) 5)
		(= (start_day r9) 2)
		(= (start_day r10) 21)
		(= (start_day r11) 15)
		(= (start_day r12) 2)
		(= (start_day r13) 11)
		(= (start_day r14) 12)
		(= (start_day r15) 5)
		(= (end_day r0) 8)
		(= (end_day r1) 30)
		(= (end_day r2) 21)
		(= (end_day r3) 25)
		(= (end_day r4) 30)
		(= (end_day r5) 26)
		(= (end_day r6) 17)
		(= (end_day r7) 28)
		(= (end_day r8) 18)
		(= (end_day r9) 17)
		(= (end_day r10) 22)
		(= (end_day r11) 25)
		(= (end_day r12) 12)
		(= (end_day r13) 24)
		(= (end_day r14) 13)
		(= (end_day r15) 7)
		(= (tamano h0) 2)
		(= (tamano h1) 4)
		(= (tamano h2) 2)
		(= (tamano h3) 2)
		(= (tamano r0) 3)
		(= (tamano r1) 4)
		(= (tamano r2) 3)
		(= (tamano r3) 2)
		(= (tamano r4) 1)
		(= (tamano r5) 2)
		(= (tamano r6) 3)
		(= (tamano r7) 3)
		(= (tamano r8) 4)
		(= (tamano r9) 4)
		(= (tamano r10) 1)
		(= (tamano r11) 3)
		(= (tamano r12) 2)
		(= (tamano r13) 1)
		(= (tamano r14) 3)
		(= (tamano r15) 3)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (reservas_libres))
)