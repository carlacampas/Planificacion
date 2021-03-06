(define (problem p11) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 - reserva
	)
	(:init
		(= (reservas_libres) 44)
		(= (start_day r0) 7)
		(= (start_day r1) 21)
		(= (start_day r2) 27)
		(= (start_day r3) 5)
		(= (start_day r4) 16)
		(= (start_day r5) 10)
		(= (start_day r6) 13)
		(= (start_day r7) 1)
		(= (start_day r8) 20)
		(= (start_day r9) 12)
		(= (start_day r10) 10)
		(= (start_day r11) 20)
		(= (start_day r12) 21)
		(= (start_day r13) 26)
		(= (start_day r14) 1)
		(= (start_day r15) 18)
		(= (start_day r16) 26)
		(= (start_day r17) 18)
		(= (start_day r18) 11)
		(= (start_day r19) 13)
		(= (start_day r20) 28)
		(= (start_day r21) 1)
		(= (start_day r22) 16)
		(= (start_day r23) 24)
		(= (start_day r24) 2)
		(= (start_day r25) 18)
		(= (start_day r26) 20)
		(= (start_day r27) 27)
		(= (start_day r28) 27)
		(= (start_day r29) 7)
		(= (start_day r30) 29)
		(= (start_day r31) 2)
		(= (start_day r32) 14)
		(= (start_day r33) 25)
		(= (start_day r34) 10)
		(= (start_day r35) 13)
		(= (start_day r36) 28)
		(= (start_day r37) 26)
		(= (start_day r38) 27)
		(= (start_day r39) 21)
		(= (start_day r40) 11)
		(= (start_day r41) 3)
		(= (start_day r42) 23)
		(= (start_day r43) 13)
		(= (end_day r0) 16)
		(= (end_day r1) 23)
		(= (end_day r2) 30)
		(= (end_day r3) 10)
		(= (end_day r4) 17)
		(= (end_day r5) 16)
		(= (end_day r6) 28)
		(= (end_day r7) 10)
		(= (end_day r8) 24)
		(= (end_day r9) 22)
		(= (end_day r10) 12)
		(= (end_day r11) 30)
		(= (end_day r12) 29)
		(= (end_day r13) 28)
		(= (end_day r14) 2)
		(= (end_day r15) 27)
		(= (end_day r16) 29)
		(= (end_day r17) 20)
		(= (end_day r18) 23)
		(= (end_day r19) 15)
		(= (end_day r20) 29)
		(= (end_day r21) 20)
		(= (end_day r22) 28)
		(= (end_day r23) 29)
		(= (end_day r24) 28)
		(= (end_day r25) 23)
		(= (end_day r26) 23)
		(= (end_day r27) 29)
		(= (end_day r28) 28)
		(= (end_day r29) 24)
		(= (end_day r30) 30)
		(= (end_day r31) 16)
		(= (end_day r32) 22)
		(= (end_day r33) 29)
		(= (end_day r34) 18)
		(= (end_day r35) 16)
		(= (end_day r36) 30)
		(= (end_day r37) 29)
		(= (end_day r38) 28)
		(= (end_day r39) 28)
		(= (end_day r40) 14)
		(= (end_day r41) 11)
		(= (end_day r42) 28)
		(= (end_day r43) 22)
		(= (tamano h0) 4)
		(= (tamano h1) 1)
		(= (tamano h2) 4)
		(= (tamano h3) 4)
		(= (tamano h4) 4)
		(= (tamano h5) 3)
		(= (tamano h6) 2)
		(= (tamano h7) 2)
		(= (tamano h8) 3)
		(= (tamano h9) 4)
		(= (tamano h10) 2)
		(= (tamano r0) 3)
		(= (tamano r1) 3)
		(= (tamano r2) 1)
		(= (tamano r3) 2)
		(= (tamano r4) 3)
		(= (tamano r5) 4)
		(= (tamano r6) 3)
		(= (tamano r7) 4)
		(= (tamano r8) 1)
		(= (tamano r9) 3)
		(= (tamano r10) 4)
		(= (tamano r11) 2)
		(= (tamano r12) 3)
		(= (tamano r13) 2)
		(= (tamano r14) 2)
		(= (tamano r15) 2)
		(= (tamano r16) 1)
		(= (tamano r17) 1)
		(= (tamano r18) 3)
		(= (tamano r19) 2)
		(= (tamano r20) 1)
		(= (tamano r21) 2)
		(= (tamano r22) 2)
		(= (tamano r23) 3)
		(= (tamano r24) 2)
		(= (tamano r25) 4)
		(= (tamano r26) 3)
		(= (tamano r27) 2)
		(= (tamano r28) 4)
		(= (tamano r29) 4)
		(= (tamano r30) 2)
		(= (tamano r31) 2)
		(= (tamano r32) 4)
		(= (tamano r33) 3)
		(= (tamano r34) 2)
		(= (tamano r35) 1)
		(= (tamano r36) 1)
		(= (tamano r37) 4)
		(= (tamano r38) 2)
		(= (tamano r39) 4)
		(= (tamano r40) 2)
		(= (tamano r41) 1)
		(= (tamano r42) 3)
		(= (tamano r43) 2)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (reservas_libres))
)