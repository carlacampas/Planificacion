(define (problem p8) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 - reserva
	)
	(:init
		(= (reservas_libres) 32)
		(= (start_day r0) 18)
		(= (start_day r1) 17)
		(= (start_day r2) 16)
		(= (start_day r3) 23)
		(= (start_day r4) 16)
		(= (start_day r5) 27)
		(= (start_day r6) 23)
		(= (start_day r7) 13)
		(= (start_day r8) 18)
		(= (start_day r9) 4)
		(= (start_day r10) 28)
		(= (start_day r11) 1)
		(= (start_day r12) 9)
		(= (start_day r13) 28)
		(= (start_day r14) 1)
		(= (start_day r15) 18)
		(= (start_day r16) 26)
		(= (start_day r17) 15)
		(= (start_day r18) 13)
		(= (start_day r19) 28)
		(= (start_day r20) 7)
		(= (start_day r21) 19)
		(= (start_day r22) 9)
		(= (start_day r23) 13)
		(= (start_day r24) 19)
		(= (start_day r25) 27)
		(= (start_day r26) 11)
		(= (start_day r27) 4)
		(= (start_day r28) 3)
		(= (start_day r29) 24)
		(= (start_day r30) 14)
		(= (start_day r31) 29)
		(= (end_day r0) 21)
		(= (end_day r1) 21)
		(= (end_day r2) 28)
		(= (end_day r3) 29)
		(= (end_day r4) 23)
		(= (end_day r5) 29)
		(= (end_day r6) 28)
		(= (end_day r7) 26)
		(= (end_day r8) 28)
		(= (end_day r9) 14)
		(= (end_day r10) 29)
		(= (end_day r11) 23)
		(= (end_day r12) 12)
		(= (end_day r13) 30)
		(= (end_day r14) 28)
		(= (end_day r15) 21)
		(= (end_day r16) 29)
		(= (end_day r17) 28)
		(= (end_day r18) 20)
		(= (end_day r19) 29)
		(= (end_day r20) 12)
		(= (end_day r21) 26)
		(= (end_day r22) 13)
		(= (end_day r23) 30)
		(= (end_day r24) 24)
		(= (end_day r25) 29)
		(= (end_day r26) 20)
		(= (end_day r27) 18)
		(= (end_day r28) 8)
		(= (end_day r29) 25)
		(= (end_day r30) 19)
		(= (end_day r31) 30)
		(= (tamano h0) 2)
		(= (tamano h1) 2)
		(= (tamano h2) 4)
		(= (tamano h3) 1)
		(= (tamano h4) 2)
		(= (tamano h5) 3)
		(= (tamano h6) 1)
		(= (tamano h7) 1)
		(= (tamano r0) 2)
		(= (tamano r1) 4)
		(= (tamano r2) 2)
		(= (tamano r3) 4)
		(= (tamano r4) 2)
		(= (tamano r5) 3)
		(= (tamano r6) 4)
		(= (tamano r7) 4)
		(= (tamano r8) 4)
		(= (tamano r9) 4)
		(= (tamano r10) 4)
		(= (tamano r11) 4)
		(= (tamano r12) 3)
		(= (tamano r13) 4)
		(= (tamano r14) 1)
		(= (tamano r15) 3)
		(= (tamano r16) 4)
		(= (tamano r17) 3)
		(= (tamano r18) 1)
		(= (tamano r19) 2)
		(= (tamano r20) 3)
		(= (tamano r21) 3)
		(= (tamano r22) 4)
		(= (tamano r23) 4)
		(= (tamano r24) 2)
		(= (tamano r25) 4)
		(= (tamano r26) 2)
		(= (tamano r27) 1)
		(= (tamano r28) 2)
		(= (tamano r29) 3)
		(= (tamano r30) 2)
		(= (tamano r31) 4)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (reservas_libres))
)