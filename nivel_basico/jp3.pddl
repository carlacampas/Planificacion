(define (problem jp3) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 - reserva
	)
	(:init
		(= (start_day r0) 13)
		(= (start_day r1) 21)
		(= (start_day r2) 29)
		(= (start_day r3) 27)
		(= (start_day r4) 24)
		(= (start_day r5) 23)
		(= (start_day r6) 26)
		(= (start_day r7) 29)
		(= (start_day r8) 6)
		(= (start_day r9) 8)
		(= (start_day r10) 17)
		(= (start_day r11) 20)
		(= (start_day r12) 10)
		(= (start_day r13) 19)
		(= (start_day r14) 22)
		(= (end_day r0) 27)
		(= (end_day r1) 26)
		(= (end_day r2) 30)
		(= (end_day r3) 29)
		(= (end_day r4) 25)
		(= (end_day r5) 24)
		(= (end_day r6) 29)
		(= (end_day r7) 30)
		(= (end_day r8) 12)
		(= (end_day r9) 18)
		(= (end_day r10) 21)
		(= (end_day r11) 21)
		(= (end_day r12) 23)
		(= (end_day r13) 30)
		(= (end_day r14) 23)
		(= (tamano h0) 3)
		(= (tamano h1) 3)
		(= (tamano h2) 1)
		(= (tamano h3) 1)
		(= (tamano h4) 3)
		(= (tamano h5) 1)
		(= (tamano h6) 1)
		(= (tamano r0) 1)
		(= (tamano r1) 2)
		(= (tamano r2) 2)
		(= (tamano r3) 2)
		(= (tamano r4) 2)
		(= (tamano r5) 1)
		(= (tamano r6) 3)
		(= (tamano r7) 1)
		(= (tamano r8) 2)
		(= (tamano r9) 2)
		(= (tamano r10) 3)
		(= (tamano r11) 3)
		(= (tamano r12) 3)
		(= (tamano r13) 2)
		(= (tamano r14) 3)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
)
