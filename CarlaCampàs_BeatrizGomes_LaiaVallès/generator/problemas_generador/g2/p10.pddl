(define (problem p10) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 - reserva
	)
	(:init
		(= (reservas_libres) 40)
		(= (start_day r0) 24)
		(= (start_day r1) 1)
		(= (start_day r2) 15)
		(= (start_day r3) 10)
		(= (start_day r4) 22)
		(= (start_day r5) 26)
		(= (start_day r6) 11)
		(= (start_day r7) 26)
		(= (start_day r8) 27)
		(= (start_day r9) 1)
		(= (start_day r10) 29)
		(= (start_day r11) 15)
		(= (start_day r12) 4)
		(= (start_day r13) 14)
		(= (start_day r14) 7)
		(= (start_day r15) 29)
		(= (start_day r16) 8)
		(= (start_day r17) 8)
		(= (start_day r18) 7)
		(= (start_day r19) 12)
		(= (start_day r20) 14)
		(= (start_day r21) 25)
		(= (start_day r22) 19)
		(= (start_day r23) 26)
		(= (start_day r24) 23)
		(= (start_day r25) 21)
		(= (start_day r26) 12)
		(= (start_day r27) 6)
		(= (start_day r28) 18)
		(= (start_day r29) 19)
		(= (start_day r30) 25)
		(= (start_day r31) 6)
		(= (start_day r32) 24)
		(= (start_day r33) 26)
		(= (start_day r34) 13)
		(= (start_day r35) 10)
		(= (start_day r36) 22)
		(= (start_day r37) 13)
		(= (start_day r38) 8)
		(= (start_day r39) 8)
		(= (end_day r0) 29)
		(= (end_day r1) 23)
		(= (end_day r2) 16)
		(= (end_day r3) 15)
		(= (end_day r4) 26)
		(= (end_day r5) 28)
		(= (end_day r6) 14)
		(= (end_day r7) 27)
		(= (end_day r8) 29)
		(= (end_day r9) 23)
		(= (end_day r10) 30)
		(= (end_day r11) 22)
		(= (end_day r12) 25)
		(= (end_day r13) 29)
		(= (end_day r14) 29)
		(= (end_day r15) 30)
		(= (end_day r16) 24)
		(= (end_day r17) 12)
		(= (end_day r18) 27)
		(= (end_day r19) 30)
		(= (end_day r20) 22)
		(= (end_day r21) 28)
		(= (end_day r22) 27)
		(= (end_day r23) 30)
		(= (end_day r24) 29)
		(= (end_day r25) 23)
		(= (end_day r26) 23)
		(= (end_day r27) 13)
		(= (end_day r28) 22)
		(= (end_day r29) 26)
		(= (end_day r30) 28)
		(= (end_day r31) 10)
		(= (end_day r32) 28)
		(= (end_day r33) 30)
		(= (end_day r34) 18)
		(= (end_day r35) 19)
		(= (end_day r36) 24)
		(= (end_day r37) 20)
		(= (end_day r38) 20)
		(= (end_day r39) 28)
		(= (tamano h0) 3)
		(= (tamano h1) 3)
		(= (tamano h2) 3)
		(= (tamano h3) 3)
		(= (tamano h4) 4)
		(= (tamano h5) 1)
		(= (tamano h6) 3)
		(= (tamano h7) 3)
		(= (tamano h8) 3)
		(= (tamano h9) 1)
		(= (tamano r0) 4)
		(= (tamano r1) 3)
		(= (tamano r2) 2)
		(= (tamano r3) 1)
		(= (tamano r4) 3)
		(= (tamano r5) 1)
		(= (tamano r6) 3)
		(= (tamano r7) 3)
		(= (tamano r8) 1)
		(= (tamano r9) 1)
		(= (tamano r10) 4)
		(= (tamano r11) 2)
		(= (tamano r12) 1)
		(= (tamano r13) 3)
		(= (tamano r14) 2)
		(= (tamano r15) 3)
		(= (tamano r16) 4)
		(= (tamano r17) 2)
		(= (tamano r18) 3)
		(= (tamano r19) 2)
		(= (tamano r20) 4)
		(= (tamano r21) 3)
		(= (tamano r22) 4)
		(= (tamano r23) 1)
		(= (tamano r24) 4)
		(= (tamano r25) 1)
		(= (tamano r26) 3)
		(= (tamano r27) 1)
		(= (tamano r28) 2)
		(= (tamano r29) 1)
		(= (tamano r30) 1)
		(= (tamano r31) 3)
		(= (tamano r32) 3)
		(= (tamano r33) 4)
		(= (tamano r34) 3)
		(= (tamano r35) 3)
		(= (tamano r36) 2)
		(= (tamano r37) 3)
		(= (tamano r38) 3)
		(= (tamano r39) 1)
		(= (pref_orient_no_servida) 27)
		(= (orientacion h0) 2)
		(= (orientacion h1) 0)
		(= (orientacion h2) 3)
		(= (orientacion h3) 3)
		(= (orientacion h4) 1)
		(= (orientacion h5) 2)
		(= (orientacion h6) 1)
		(= (orientacion h7) 2)
		(= (orientacion h8) 3)
		(= (orientacion h9) 0)
		(= (orientacion r0) 1)
		(= (orientacion r1) -1)
		(= (orientacion r2) 0)
		(= (orientacion r3) 0)
		(= (orientacion r4) 2)
		(= (orientacion r5) 2)
		(= (orientacion r6) 0)
		(= (orientacion r7) 3)
		(= (orientacion r8) 0)
		(= (orientacion r9) 3)
		(= (orientacion r10) 2)
		(= (orientacion r11) 1)
		(= (orientacion r12) 1)
		(= (orientacion r13) 2)
		(= (orientacion r14) 1)
		(= (orientacion r15) 3)
		(= (orientacion r16) 0)
		(= (orientacion r17) -1)
		(= (orientacion r18) 0)
		(= (orientacion r19) 1)
		(= (orientacion r20) 0)
		(= (orientacion r21) 0)
		(= (orientacion r22) -1)
		(= (orientacion r23) 1)
		(= (orientacion r24) 1)
		(= (orientacion r25) -1)
		(= (orientacion r26) 1)
		(= (orientacion r27) 0)
		(= (orientacion r28) -1)
		(= (orientacion r29) 3)
		(= (orientacion r30) 2)
		(= (orientacion r31) 3)
		(= (orientacion r32) 1)
		(= (orientacion r33) 2)
		(= (orientacion r34) 1)
		(= (orientacion r35) 1)
		(= (orientacion r36) 2)
		(= (orientacion r37) 1)
		(= (orientacion r38) 2)
		(= (orientacion r39) 2)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (+ (pref_orient_no_servida) (* (reservas_libres) 3)))
)