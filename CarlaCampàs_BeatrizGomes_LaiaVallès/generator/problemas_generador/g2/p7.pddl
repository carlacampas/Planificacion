(define (problem p7) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 - reserva
	)
	(:init
		(= (reservas_libres) 28)
		(= (start_day r0) 7)
		(= (start_day r1) 14)
		(= (start_day r2) 16)
		(= (start_day r3) 23)
		(= (start_day r4) 10)
		(= (start_day r5) 11)
		(= (start_day r6) 4)
		(= (start_day r7) 15)
		(= (start_day r8) 21)
		(= (start_day r9) 6)
		(= (start_day r10) 29)
		(= (start_day r11) 19)
		(= (start_day r12) 5)
		(= (start_day r13) 6)
		(= (start_day r14) 21)
		(= (start_day r15) 6)
		(= (start_day r16) 25)
		(= (start_day r17) 28)
		(= (start_day r18) 24)
		(= (start_day r19) 17)
		(= (start_day r20) 17)
		(= (start_day r21) 24)
		(= (start_day r22) 2)
		(= (start_day r23) 9)
		(= (start_day r24) 18)
		(= (start_day r25) 9)
		(= (start_day r26) 16)
		(= (start_day r27) 18)
		(= (end_day r0) 27)
		(= (end_day r1) 15)
		(= (end_day r2) 30)
		(= (end_day r3) 30)
		(= (end_day r4) 28)
		(= (end_day r5) 23)
		(= (end_day r6) 26)
		(= (end_day r7) 30)
		(= (end_day r8) 24)
		(= (end_day r9) 9)
		(= (end_day r10) 30)
		(= (end_day r11) 30)
		(= (end_day r12) 14)
		(= (end_day r13) 12)
		(= (end_day r14) 27)
		(= (end_day r15) 11)
		(= (end_day r16) 26)
		(= (end_day r17) 29)
		(= (end_day r18) 28)
		(= (end_day r19) 28)
		(= (end_day r20) 23)
		(= (end_day r21) 28)
		(= (end_day r22) 18)
		(= (end_day r23) 22)
		(= (end_day r24) 29)
		(= (end_day r25) 21)
		(= (end_day r26) 21)
		(= (end_day r27) 23)
		(= (tamano h0) 4)
		(= (tamano h1) 4)
		(= (tamano h2) 3)
		(= (tamano h3) 1)
		(= (tamano h4) 2)
		(= (tamano h5) 4)
		(= (tamano h6) 4)
		(= (tamano r0) 4)
		(= (tamano r1) 3)
		(= (tamano r2) 4)
		(= (tamano r3) 3)
		(= (tamano r4) 3)
		(= (tamano r5) 3)
		(= (tamano r6) 1)
		(= (tamano r7) 1)
		(= (tamano r8) 4)
		(= (tamano r9) 4)
		(= (tamano r10) 2)
		(= (tamano r11) 1)
		(= (tamano r12) 2)
		(= (tamano r13) 1)
		(= (tamano r14) 4)
		(= (tamano r15) 4)
		(= (tamano r16) 4)
		(= (tamano r17) 1)
		(= (tamano r18) 1)
		(= (tamano r19) 2)
		(= (tamano r20) 3)
		(= (tamano r21) 3)
		(= (tamano r22) 1)
		(= (tamano r23) 4)
		(= (tamano r24) 2)
		(= (tamano r25) 2)
		(= (tamano r26) 3)
		(= (tamano r27) 4)
		(= (pref_orient_no_servida) 22)
		(= (orientacion h0) 3)
		(= (orientacion h1) 3)
		(= (orientacion h2) 1)
		(= (orientacion h3) 2)
		(= (orientacion h4) 3)
		(= (orientacion h5) 2)
		(= (orientacion h6) 0)
		(= (orientacion r0) 1)
		(= (orientacion r1) 0)
		(= (orientacion r2) 0)
		(= (orientacion r3) 2)
		(= (orientacion r4) -1)
		(= (orientacion r5) -1)
		(= (orientacion r6) 0)
		(= (orientacion r7) -1)
		(= (orientacion r8) 2)
		(= (orientacion r9) -1)
		(= (orientacion r10) 3)
		(= (orientacion r11) 0)
		(= (orientacion r12) -1)
		(= (orientacion r13) 3)
		(= (orientacion r14) -1)
		(= (orientacion r15) 0)
		(= (orientacion r16) -1)
		(= (orientacion r17) 0)
		(= (orientacion r18) 1)
		(= (orientacion r19) 0)
		(= (orientacion r20) 0)
		(= (orientacion r21) 3)
		(= (orientacion r22) 2)
		(= (orientacion r23) 1)
		(= (orientacion r24) 3)
		(= (orientacion r25) 1)
		(= (orientacion r26) 3)
		(= (orientacion r27) 0)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (+ (pref_orient_no_servida) (* (reservas_libres) 3)))
)