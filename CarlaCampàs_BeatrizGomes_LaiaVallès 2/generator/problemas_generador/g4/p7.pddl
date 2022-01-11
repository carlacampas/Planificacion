(define (problem p7) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 - reserva
	)
	(:init
		(= (cantidad_reservas) 0)
		(= (xctj_ocupacion) 0)
		(= (habitaciones_unused) 7)
		(= (start_day r0) 24)
		(= (start_day r1) 27)
		(= (start_day r2) 23)
		(= (start_day r3) 4)
		(= (start_day r4) 11)
		(= (start_day r5) 7)
		(= (start_day r6) 21)
		(= (start_day r7) 19)
		(= (start_day r8) 22)
		(= (start_day r9) 20)
		(= (start_day r10) 27)
		(= (start_day r11) 23)
		(= (start_day r12) 22)
		(= (start_day r13) 7)
		(= (start_day r14) 4)
		(= (start_day r15) 17)
		(= (start_day r16) 6)
		(= (start_day r17) 21)
		(= (start_day r18) 18)
		(= (start_day r19) 23)
		(= (start_day r20) 10)
		(= (start_day r21) 29)
		(= (start_day r22) 4)
		(= (start_day r23) 22)
		(= (start_day r24) 18)
		(= (start_day r25) 18)
		(= (start_day r26) 22)
		(= (start_day r27) 12)
		(= (end_day r0) 25)
		(= (end_day r1) 28)
		(= (end_day r2) 26)
		(= (end_day r3) 7)
		(= (end_day r4) 22)
		(= (end_day r5) 27)
		(= (end_day r6) 22)
		(= (end_day r7) 26)
		(= (end_day r8) 24)
		(= (end_day r9) 25)
		(= (end_day r10) 30)
		(= (end_day r11) 30)
		(= (end_day r12) 26)
		(= (end_day r13) 12)
		(= (end_day r14) 21)
		(= (end_day r15) 26)
		(= (end_day r16) 22)
		(= (end_day r17) 23)
		(= (end_day r18) 20)
		(= (end_day r19) 30)
		(= (end_day r20) 18)
		(= (end_day r21) 30)
		(= (end_day r22) 19)
		(= (end_day r23) 25)
		(= (end_day r24) 25)
		(= (end_day r25) 30)
		(= (end_day r26) 30)
		(= (end_day r27) 23)
		(= (tamano h0) 3)
		(= (tamano h1) 2)
		(= (tamano h2) 2)
		(= (tamano h3) 4)
		(= (tamano h4) 2)
		(= (tamano h5) 1)
		(= (tamano h6) 2)
		(= (tamano r0) 1)
		(= (tamano r1) 3)
		(= (tamano r2) 3)
		(= (tamano r3) 4)
		(= (tamano r4) 4)
		(= (tamano r5) 2)
		(= (tamano r6) 4)
		(= (tamano r7) 2)
		(= (tamano r8) 1)
		(= (tamano r9) 3)
		(= (tamano r10) 4)
		(= (tamano r11) 2)
		(= (tamano r12) 1)
		(= (tamano r13) 4)
		(= (tamano r14) 2)
		(= (tamano r15) 4)
		(= (tamano r16) 2)
		(= (tamano r17) 4)
		(= (tamano r18) 3)
		(= (tamano r19) 3)
		(= (tamano r20) 4)
		(= (tamano r21) 1)
		(= (tamano r22) 2)
		(= (tamano r23) 4)
		(= (tamano r24) 1)
		(= (tamano r25) 3)
		(= (tamano r26) 4)
		(= (tamano r27) 2)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric maximize (+ (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (habitaciones_unused) 7)) (/ (cantidad_reservas) 28)))
)