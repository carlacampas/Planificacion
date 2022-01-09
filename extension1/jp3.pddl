(define (problem generated) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 - reserva
	)
	(:init
		(= (reservas_libres) 40)
		(= (start_day r0) 5)
		(= (start_day r1) 29)
		(= (start_day r2) 15)
		(= (start_day r3) 29)
		(= (start_day r4) 13)
		(= (start_day r5) 28)
		(= (start_day r6) 9)
		(= (start_day r7) 12)
		(= (start_day r8) 15)
		(= (start_day r9) 27)
		(= (start_day r10) 11)
		(= (start_day r11) 21)
		(= (start_day r12) 14)
		(= (start_day r13) 14)
		(= (start_day r14) 16)
		(= (start_day r15) 8)
		(= (start_day r16) 3)
		(= (start_day r17) 3)
		(= (start_day r18) 18)
		(= (start_day r19) 17)
		(= (start_day r20) 25)
		(= (start_day r21) 19)
		(= (start_day r22) 13)
		(= (start_day r23) 12)
		(= (start_day r24) 25)
		(= (start_day r25) 1)
		(= (start_day r26) 2)
		(= (start_day r27) 24)
		(= (start_day r28) 21)
		(= (start_day r29) 15)
		(= (start_day r30) 23)
		(= (start_day r31) 1)
		(= (start_day r32) 6)
		(= (start_day r33) 7)
		(= (start_day r34) 13)
		(= (start_day r35) 11)
		(= (start_day r36) 25)
		(= (start_day r37) 24)
		(= (start_day r38) 17)
		(= (start_day r39) 13)
		(= (end_day r0) 29)
		(= (end_day r1) 30)
		(= (end_day r2) 16)
		(= (end_day r3) 30)
		(= (end_day r4) 21)
		(= (end_day r5) 29)
		(= (end_day r6) 25)
		(= (end_day r7) 24)
		(= (end_day r8) 21)
		(= (end_day r9) 28)
		(= (end_day r10) 25)
		(= (end_day r11) 24)
		(= (end_day r12) 26)
		(= (end_day r13) 25)
		(= (end_day r14) 19)
		(= (end_day r15) 23)
		(= (end_day r16) 6)
		(= (end_day r17) 20)
		(= (end_day r18) 23)
		(= (end_day r19) 28)
		(= (end_day r20) 29)
		(= (end_day r21) 27)
		(= (end_day r22) 29)
		(= (end_day r23) 15)
		(= (end_day r24) 28)
		(= (end_day r25) 2)
		(= (end_day r26) 28)
		(= (end_day r27) 25)
		(= (end_day r28) 22)
		(= (end_day r29) 16)
		(= (end_day r30) 25)
		(= (end_day r31) 28)
		(= (end_day r32) 21)
		(= (end_day r33) 10)
		(= (end_day r34) 17)
		(= (end_day r35) 29)
		(= (end_day r36) 27)
		(= (end_day r37) 27)
		(= (end_day r38) 23)
		(= (end_day r39) 28)
		(= (tamano h0) 3)
		(= (tamano h1) 4)
		(= (tamano h2) 4)
		(= (tamano h3) 2)
		(= (tamano h4) 3)
		(= (tamano h5) 3)
		(= (tamano h6) 1)
		(= (tamano h7) 1)
		(= (tamano h8) 1)
		(= (tamano h9) 1)
		(= (tamano r0) 1)
		(= (tamano r1) 1)
		(= (tamano r2) 4)
		(= (tamano r3) 4)
		(= (tamano r4) 4)
		(= (tamano r5) 1)
		(= (tamano r6) 2)
		(= (tamano r7) 1)
		(= (tamano r8) 1)
		(= (tamano r9) 2)
		(= (tamano r10) 2)
		(= (tamano r11) 2)
		(= (tamano r12) 2)
		(= (tamano r13) 3)
		(= (tamano r14) 3)
		(= (tamano r15) 3)
		(= (tamano r16) 4)
		(= (tamano r17) 3)
		(= (tamano r18) 4)
		(= (tamano r19) 1)
		(= (tamano r20) 4)
		(= (tamano r21) 4)
		(= (tamano r22) 1)
		(= (tamano r23) 3)
		(= (tamano r24) 2)
		(= (tamano r25) 4)
		(= (tamano r26) 3)
		(= (tamano r27) 1)
		(= (tamano r28) 4)
		(= (tamano r29) 2)
		(= (tamano r30) 1)
		(= (tamano r31) 4)
		(= (tamano r32) 3)
		(= (tamano r33) 4)
		(= (tamano r34) 1)
		(= (tamano r35) 2)
		(= (tamano r36) 2)
		(= (tamano r37) 1)
		(= (tamano r38) 2)
		(= (tamano r39) 3)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (reservas_libres))
)
