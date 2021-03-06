(define (problem p16) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 - reserva
	)
	(:init
		(= (reservas_libres) 64)
		(= (start_day r0) 10)
		(= (start_day r1) 10)
		(= (start_day r2) 18)
		(= (start_day r3) 20)
		(= (start_day r4) 9)
		(= (start_day r5) 19)
		(= (start_day r6) 9)
		(= (start_day r7) 12)
		(= (start_day r8) 1)
		(= (start_day r9) 22)
		(= (start_day r10) 21)
		(= (start_day r11) 25)
		(= (start_day r12) 5)
		(= (start_day r13) 16)
		(= (start_day r14) 4)
		(= (start_day r15) 5)
		(= (start_day r16) 28)
		(= (start_day r17) 14)
		(= (start_day r18) 21)
		(= (start_day r19) 23)
		(= (start_day r20) 1)
		(= (start_day r21) 12)
		(= (start_day r22) 29)
		(= (start_day r23) 4)
		(= (start_day r24) 15)
		(= (start_day r25) 10)
		(= (start_day r26) 13)
		(= (start_day r27) 26)
		(= (start_day r28) 2)
		(= (start_day r29) 18)
		(= (start_day r30) 27)
		(= (start_day r31) 10)
		(= (start_day r32) 18)
		(= (start_day r33) 27)
		(= (start_day r34) 5)
		(= (start_day r35) 1)
		(= (start_day r36) 5)
		(= (start_day r37) 10)
		(= (start_day r38) 23)
		(= (start_day r39) 2)
		(= (start_day r40) 26)
		(= (start_day r41) 24)
		(= (start_day r42) 20)
		(= (start_day r43) 17)
		(= (start_day r44) 22)
		(= (start_day r45) 26)
		(= (start_day r46) 11)
		(= (start_day r47) 6)
		(= (start_day r48) 18)
		(= (start_day r49) 14)
		(= (start_day r50) 3)
		(= (start_day r51) 15)
		(= (start_day r52) 12)
		(= (start_day r53) 22)
		(= (start_day r54) 27)
		(= (start_day r55) 20)
		(= (start_day r56) 3)
		(= (start_day r57) 21)
		(= (start_day r58) 25)
		(= (start_day r59) 28)
		(= (start_day r60) 25)
		(= (start_day r61) 13)
		(= (start_day r62) 20)
		(= (start_day r63) 5)
		(= (end_day r0) 18)
		(= (end_day r1) 16)
		(= (end_day r2) 25)
		(= (end_day r3) 25)
		(= (end_day r4) 22)
		(= (end_day r5) 22)
		(= (end_day r6) 12)
		(= (end_day r7) 25)
		(= (end_day r8) 16)
		(= (end_day r9) 24)
		(= (end_day r10) 24)
		(= (end_day r11) 29)
		(= (end_day r12) 9)
		(= (end_day r13) 23)
		(= (end_day r14) 20)
		(= (end_day r15) 23)
		(= (end_day r16) 30)
		(= (end_day r17) 19)
		(= (end_day r18) 23)
		(= (end_day r19) 27)
		(= (end_day r20) 16)
		(= (end_day r21) 23)
		(= (end_day r22) 30)
		(= (end_day r23) 5)
		(= (end_day r24) 26)
		(= (end_day r25) 19)
		(= (end_day r26) 23)
		(= (end_day r27) 28)
		(= (end_day r28) 27)
		(= (end_day r29) 25)
		(= (end_day r30) 29)
		(= (end_day r31) 22)
		(= (end_day r32) 23)
		(= (end_day r33) 30)
		(= (end_day r34) 17)
		(= (end_day r35) 13)
		(= (end_day r36) 21)
		(= (end_day r37) 18)
		(= (end_day r38) 28)
		(= (end_day r39) 21)
		(= (end_day r40) 29)
		(= (end_day r41) 29)
		(= (end_day r42) 25)
		(= (end_day r43) 22)
		(= (end_day r44) 25)
		(= (end_day r45) 28)
		(= (end_day r46) 24)
		(= (end_day r47) 14)
		(= (end_day r48) 25)
		(= (end_day r49) 17)
		(= (end_day r50) 21)
		(= (end_day r51) 21)
		(= (end_day r52) 20)
		(= (end_day r53) 30)
		(= (end_day r54) 29)
		(= (end_day r55) 26)
		(= (end_day r56) 17)
		(= (end_day r57) 30)
		(= (end_day r58) 30)
		(= (end_day r59) 29)
		(= (end_day r60) 26)
		(= (end_day r61) 17)
		(= (end_day r62) 27)
		(= (end_day r63) 25)
		(= (tamano h0) 4)
		(= (tamano h1) 2)
		(= (tamano h2) 1)
		(= (tamano h3) 2)
		(= (tamano h4) 1)
		(= (tamano h5) 3)
		(= (tamano h6) 3)
		(= (tamano h7) 4)
		(= (tamano h8) 1)
		(= (tamano h9) 1)
		(= (tamano h10) 3)
		(= (tamano h11) 4)
		(= (tamano h12) 1)
		(= (tamano h13) 2)
		(= (tamano h14) 1)
		(= (tamano h15) 3)
		(= (tamano r0) 4)
		(= (tamano r1) 1)
		(= (tamano r2) 4)
		(= (tamano r3) 4)
		(= (tamano r4) 1)
		(= (tamano r5) 3)
		(= (tamano r6) 2)
		(= (tamano r7) 4)
		(= (tamano r8) 2)
		(= (tamano r9) 3)
		(= (tamano r10) 1)
		(= (tamano r11) 3)
		(= (tamano r12) 2)
		(= (tamano r13) 1)
		(= (tamano r14) 1)
		(= (tamano r15) 3)
		(= (tamano r16) 3)
		(= (tamano r17) 3)
		(= (tamano r18) 1)
		(= (tamano r19) 2)
		(= (tamano r20) 1)
		(= (tamano r21) 2)
		(= (tamano r22) 3)
		(= (tamano r23) 1)
		(= (tamano r24) 1)
		(= (tamano r25) 3)
		(= (tamano r26) 2)
		(= (tamano r27) 4)
		(= (tamano r28) 3)
		(= (tamano r29) 4)
		(= (tamano r30) 4)
		(= (tamano r31) 4)
		(= (tamano r32) 1)
		(= (tamano r33) 2)
		(= (tamano r34) 3)
		(= (tamano r35) 3)
		(= (tamano r36) 1)
		(= (tamano r37) 3)
		(= (tamano r38) 1)
		(= (tamano r39) 4)
		(= (tamano r40) 2)
		(= (tamano r41) 4)
		(= (tamano r42) 4)
		(= (tamano r43) 3)
		(= (tamano r44) 1)
		(= (tamano r45) 3)
		(= (tamano r46) 4)
		(= (tamano r47) 3)
		(= (tamano r48) 1)
		(= (tamano r49) 4)
		(= (tamano r50) 3)
		(= (tamano r51) 3)
		(= (tamano r52) 2)
		(= (tamano r53) 1)
		(= (tamano r54) 2)
		(= (tamano r55) 4)
		(= (tamano r56) 3)
		(= (tamano r57) 2)
		(= (tamano r58) 3)
		(= (tamano r59) 3)
		(= (tamano r60) 1)
		(= (tamano r61) 2)
		(= (tamano r62) 3)
		(= (tamano r63) 3)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (reservas_libres))
)