(define (problem p13) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 - reserva
	)
	(:init
		(= (reservas_libres) 52)
		(= (start_day r0) 26)
		(= (start_day r1) 15)
		(= (start_day r2) 26)
		(= (start_day r3) 19)
		(= (start_day r4) 16)
		(= (start_day r5) 19)
		(= (start_day r6) 15)
		(= (start_day r7) 29)
		(= (start_day r8) 21)
		(= (start_day r9) 9)
		(= (start_day r10) 9)
		(= (start_day r11) 8)
		(= (start_day r12) 4)
		(= (start_day r13) 19)
		(= (start_day r14) 26)
		(= (start_day r15) 17)
		(= (start_day r16) 14)
		(= (start_day r17) 6)
		(= (start_day r18) 11)
		(= (start_day r19) 4)
		(= (start_day r20) 12)
		(= (start_day r21) 26)
		(= (start_day r22) 19)
		(= (start_day r23) 11)
		(= (start_day r24) 29)
		(= (start_day r25) 2)
		(= (start_day r26) 9)
		(= (start_day r27) 5)
		(= (start_day r28) 13)
		(= (start_day r29) 10)
		(= (start_day r30) 29)
		(= (start_day r31) 9)
		(= (start_day r32) 27)
		(= (start_day r33) 3)
		(= (start_day r34) 12)
		(= (start_day r35) 25)
		(= (start_day r36) 1)
		(= (start_day r37) 1)
		(= (start_day r38) 19)
		(= (start_day r39) 8)
		(= (start_day r40) 28)
		(= (start_day r41) 3)
		(= (start_day r42) 26)
		(= (start_day r43) 14)
		(= (start_day r44) 9)
		(= (start_day r45) 20)
		(= (start_day r46) 22)
		(= (start_day r47) 9)
		(= (start_day r48) 6)
		(= (start_day r49) 29)
		(= (start_day r50) 14)
		(= (start_day r51) 18)
		(= (end_day r0) 28)
		(= (end_day r1) 25)
		(= (end_day r2) 30)
		(= (end_day r3) 22)
		(= (end_day r4) 20)
		(= (end_day r5) 26)
		(= (end_day r6) 22)
		(= (end_day r7) 30)
		(= (end_day r8) 29)
		(= (end_day r9) 19)
		(= (end_day r10) 19)
		(= (end_day r11) 19)
		(= (end_day r12) 19)
		(= (end_day r13) 25)
		(= (end_day r14) 30)
		(= (end_day r15) 29)
		(= (end_day r16) 25)
		(= (end_day r17) 29)
		(= (end_day r18) 23)
		(= (end_day r19) 15)
		(= (end_day r20) 25)
		(= (end_day r21) 28)
		(= (end_day r22) 20)
		(= (end_day r23) 21)
		(= (end_day r24) 30)
		(= (end_day r25) 23)
		(= (end_day r26) 30)
		(= (end_day r27) 21)
		(= (end_day r28) 22)
		(= (end_day r29) 13)
		(= (end_day r30) 30)
		(= (end_day r31) 26)
		(= (end_day r32) 30)
		(= (end_day r33) 21)
		(= (end_day r34) 20)
		(= (end_day r35) 28)
		(= (end_day r36) 24)
		(= (end_day r37) 3)
		(= (end_day r38) 21)
		(= (end_day r39) 16)
		(= (end_day r40) 30)
		(= (end_day r41) 21)
		(= (end_day r42) 30)
		(= (end_day r43) 20)
		(= (end_day r44) 17)
		(= (end_day r45) 28)
		(= (end_day r46) 28)
		(= (end_day r47) 11)
		(= (end_day r48) 30)
		(= (end_day r49) 30)
		(= (end_day r50) 26)
		(= (end_day r51) 19)
		(= (tamano h0) 2)
		(= (tamano h1) 3)
		(= (tamano h2) 4)
		(= (tamano h3) 3)
		(= (tamano h4) 4)
		(= (tamano h5) 2)
		(= (tamano h6) 3)
		(= (tamano h7) 1)
		(= (tamano h8) 2)
		(= (tamano h9) 1)
		(= (tamano h10) 2)
		(= (tamano h11) 1)
		(= (tamano h12) 4)
		(= (tamano r0) 2)
		(= (tamano r1) 1)
		(= (tamano r2) 3)
		(= (tamano r3) 1)
		(= (tamano r4) 2)
		(= (tamano r5) 1)
		(= (tamano r6) 1)
		(= (tamano r7) 3)
		(= (tamano r8) 3)
		(= (tamano r9) 3)
		(= (tamano r10) 3)
		(= (tamano r11) 3)
		(= (tamano r12) 3)
		(= (tamano r13) 2)
		(= (tamano r14) 2)
		(= (tamano r15) 1)
		(= (tamano r16) 2)
		(= (tamano r17) 3)
		(= (tamano r18) 4)
		(= (tamano r19) 3)
		(= (tamano r20) 3)
		(= (tamano r21) 1)
		(= (tamano r22) 2)
		(= (tamano r23) 4)
		(= (tamano r24) 1)
		(= (tamano r25) 2)
		(= (tamano r26) 1)
		(= (tamano r27) 1)
		(= (tamano r28) 2)
		(= (tamano r29) 1)
		(= (tamano r30) 1)
		(= (tamano r31) 3)
		(= (tamano r32) 3)
		(= (tamano r33) 1)
		(= (tamano r34) 4)
		(= (tamano r35) 3)
		(= (tamano r36) 4)
		(= (tamano r37) 4)
		(= (tamano r38) 1)
		(= (tamano r39) 4)
		(= (tamano r40) 3)
		(= (tamano r41) 2)
		(= (tamano r42) 4)
		(= (tamano r43) 3)
		(= (tamano r44) 2)
		(= (tamano r45) 2)
		(= (tamano r46) 3)
		(= (tamano r47) 2)
		(= (tamano r48) 1)
		(= (tamano r49) 2)
		(= (tamano r50) 3)
		(= (tamano r51) 2)
		(= (pref_orient_no_servida) 32)
		(= (orientacion h0) 2)
		(= (orientacion h1) 2)
		(= (orientacion h2) 2)
		(= (orientacion h3) 2)
		(= (orientacion h4) 0)
		(= (orientacion h5) 0)
		(= (orientacion h6) 3)
		(= (orientacion h7) 1)
		(= (orientacion h8) 0)
		(= (orientacion h9) 1)
		(= (orientacion h10) 2)
		(= (orientacion h11) 3)
		(= (orientacion h12) 0)
		(= (orientacion r0) 1)
		(= (orientacion r1) -1)
		(= (orientacion r2) 1)
		(= (orientacion r3) 3)
		(= (orientacion r4) -1)
		(= (orientacion r5) 1)
		(= (orientacion r6) 3)
		(= (orientacion r7) 2)
		(= (orientacion r8) 0)
		(= (orientacion r9) 0)
		(= (orientacion r10) 0)
		(= (orientacion r11) 2)
		(= (orientacion r12) 3)
		(= (orientacion r13) 0)
		(= (orientacion r14) 3)
		(= (orientacion r15) 3)
		(= (orientacion r16) -1)
		(= (orientacion r17) 3)
		(= (orientacion r18) 2)
		(= (orientacion r19) 2)
		(= (orientacion r20) 3)
		(= (orientacion r21) -1)
		(= (orientacion r22) 0)
		(= (orientacion r23) 1)
		(= (orientacion r24) 0)
		(= (orientacion r25) 3)
		(= (orientacion r26) 1)
		(= (orientacion r27) 2)
		(= (orientacion r28) -1)
		(= (orientacion r29) 2)
		(= (orientacion r30) -1)
		(= (orientacion r31) 0)
		(= (orientacion r32) 1)
		(= (orientacion r33) 2)
		(= (orientacion r34) -1)
		(= (orientacion r35) 0)
		(= (orientacion r36) 1)
		(= (orientacion r37) 0)
		(= (orientacion r38) 1)
		(= (orientacion r39) 1)
		(= (orientacion r40) 0)
		(= (orientacion r41) 2)
		(= (orientacion r42) 0)
		(= (orientacion r43) -1)
		(= (orientacion r44) -1)
		(= (orientacion r45) 2)
		(= (orientacion r46) -1)
		(= (orientacion r47) -1)
		(= (orientacion r48) 2)
		(= (orientacion r49) 0)
		(= (orientacion r50) 0)
		(= (orientacion r51) -1)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (+ (pref_orient_no_servida) (* (reservas_libres) 3)))
)