(define (problem p6) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 - reserva
	)
	(:init
		(= (cantidad_reservas) 0)
		(= (xctj_ocupacion) 0)
		(= (habitaciones_unused) 6)
		(= (start_day r0) 11)
		(= (start_day r1) 22)
		(= (start_day r2) 22)
		(= (start_day r3) 24)
		(= (start_day r4) 19)
		(= (start_day r5) 1)
		(= (start_day r6) 20)
		(= (start_day r7) 12)
		(= (start_day r8) 4)
		(= (start_day r9) 10)
		(= (start_day r10) 13)
		(= (start_day r11) 8)
		(= (start_day r12) 20)
		(= (start_day r13) 22)
		(= (start_day r14) 7)
		(= (start_day r15) 7)
		(= (start_day r16) 4)
		(= (start_day r17) 14)
		(= (start_day r18) 19)
		(= (start_day r19) 15)
		(= (start_day r20) 14)
		(= (start_day r21) 6)
		(= (start_day r22) 5)
		(= (start_day r23) 27)
		(= (end_day r0) 23)
		(= (end_day r1) 27)
		(= (end_day r2) 26)
		(= (end_day r3) 25)
		(= (end_day r4) 26)
		(= (end_day r5) 12)
		(= (end_day r6) 28)
		(= (end_day r7) 28)
		(= (end_day r8) 19)
		(= (end_day r9) 24)
		(= (end_day r10) 24)
		(= (end_day r11) 24)
		(= (end_day r12) 23)
		(= (end_day r13) 28)
		(= (end_day r14) 14)
		(= (end_day r15) 23)
		(= (end_day r16) 30)
		(= (end_day r17) 30)
		(= (end_day r18) 24)
		(= (end_day r19) 25)
		(= (end_day r20) 18)
		(= (end_day r21) 22)
		(= (end_day r22) 28)
		(= (end_day r23) 28)
		(= (tamano h0) 2)
		(= (tamano h1) 4)
		(= (tamano h2) 4)
		(= (tamano h3) 2)
		(= (tamano h4) 2)
		(= (tamano h5) 2)
		(= (tamano r0) 3)
		(= (tamano r1) 3)
		(= (tamano r2) 2)
		(= (tamano r3) 1)
		(= (tamano r4) 1)
		(= (tamano r5) 4)
		(= (tamano r6) 3)
		(= (tamano r7) 4)
		(= (tamano r8) 4)
		(= (tamano r9) 4)
		(= (tamano r10) 4)
		(= (tamano r11) 4)
		(= (tamano r12) 2)
		(= (tamano r13) 4)
		(= (tamano r14) 3)
		(= (tamano r15) 3)
		(= (tamano r16) 1)
		(= (tamano r17) 2)
		(= (tamano r18) 1)
		(= (tamano r19) 1)
		(= (tamano r20) 4)
		(= (tamano r21) 4)
		(= (tamano r22) 3)
		(= (tamano r23) 3)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric maximize (+ (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (habitaciones_unused) 6)) (/ (cantidad_reservas) 24)))
)