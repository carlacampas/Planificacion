(define (problem p17) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 - reserva
	)
	(:init
		(= (cantidad_reservas) 0)
		(= (xctj_ocupacion) 0)
		(= (start_day r0) 20)
		(= (start_day r1) 6)
		(= (start_day r2) 10)
		(= (start_day r3) 15)
		(= (start_day r4) 9)
		(= (start_day r5) 21)
		(= (start_day r6) 22)
		(= (start_day r7) 14)
		(= (start_day r8) 26)
		(= (start_day r9) 17)
		(= (start_day r10) 25)
		(= (start_day r11) 3)
		(= (start_day r12) 8)
		(= (start_day r13) 6)
		(= (start_day r14) 5)
		(= (start_day r15) 13)
		(= (start_day r16) 17)
		(= (start_day r17) 22)
		(= (start_day r18) 20)
		(= (start_day r19) 12)
		(= (start_day r20) 12)
		(= (start_day r21) 28)
		(= (start_day r22) 8)
		(= (start_day r23) 25)
		(= (start_day r24) 28)
		(= (start_day r25) 28)
		(= (start_day r26) 1)
		(= (start_day r27) 29)
		(= (start_day r28) 2)
		(= (start_day r29) 10)
		(= (start_day r30) 1)
		(= (start_day r31) 26)
		(= (start_day r32) 25)
		(= (start_day r33) 4)
		(= (start_day r34) 23)
		(= (start_day r35) 4)
		(= (start_day r36) 26)
		(= (start_day r37) 13)
		(= (start_day r38) 15)
		(= (start_day r39) 25)
		(= (start_day r40) 17)
		(= (start_day r41) 29)
		(= (start_day r42) 26)
		(= (start_day r43) 23)
		(= (start_day r44) 9)
		(= (start_day r45) 6)
		(= (start_day r46) 19)
		(= (start_day r47) 4)
		(= (start_day r48) 19)
		(= (start_day r49) 16)
		(= (start_day r50) 13)
		(= (start_day r51) 11)
		(= (start_day r52) 12)
		(= (start_day r53) 22)
		(= (start_day r54) 9)
		(= (start_day r55) 20)
		(= (start_day r56) 7)
		(= (start_day r57) 9)
		(= (start_day r58) 18)
		(= (start_day r59) 10)
		(= (start_day r60) 13)
		(= (start_day r61) 26)
		(= (start_day r62) 20)
		(= (start_day r63) 9)
		(= (start_day r64) 4)
		(= (start_day r65) 10)
		(= (start_day r66) 29)
		(= (start_day r67) 24)
		(= (end_day r0) 23)
		(= (end_day r1) 28)
		(= (end_day r2) 24)
		(= (end_day r3) 29)
		(= (end_day r4) 19)
		(= (end_day r5) 23)
		(= (end_day r6) 30)
		(= (end_day r7) 30)
		(= (end_day r8) 30)
		(= (end_day r9) 19)
		(= (end_day r10) 26)
		(= (end_day r11) 15)
		(= (end_day r12) 25)
		(= (end_day r13) 17)
		(= (end_day r14) 12)
		(= (end_day r15) 19)
		(= (end_day r16) 29)
		(= (end_day r17) 30)
		(= (end_day r18) 29)
		(= (end_day r19) 17)
		(= (end_day r20) 25)
		(= (end_day r21) 29)
		(= (end_day r22) 24)
		(= (end_day r23) 29)
		(= (end_day r24) 30)
		(= (end_day r25) 29)
		(= (end_day r26) 2)
		(= (end_day r27) 30)
		(= (end_day r28) 18)
		(= (end_day r29) 28)
		(= (end_day r30) 27)
		(= (end_day r31) 30)
		(= (end_day r32) 26)
		(= (end_day r33) 5)
		(= (end_day r34) 24)
		(= (end_day r35) 13)
		(= (end_day r36) 29)
		(= (end_day r37) 15)
		(= (end_day r38) 25)
		(= (end_day r39) 30)
		(= (end_day r40) 28)
		(= (end_day r41) 30)
		(= (end_day r42) 30)
		(= (end_day r43) 28)
		(= (end_day r44) 16)
		(= (end_day r45) 14)
		(= (end_day r46) 26)
		(= (end_day r47) 23)
		(= (end_day r48) 28)
		(= (end_day r49) 19)
		(= (end_day r50) 18)
		(= (end_day r51) 15)
		(= (end_day r52) 14)
		(= (end_day r53) 25)
		(= (end_day r54) 10)
		(= (end_day r55) 22)
		(= (end_day r56) 18)
		(= (end_day r57) 17)
		(= (end_day r58) 25)
		(= (end_day r59) 20)
		(= (end_day r60) 17)
		(= (end_day r61) 27)
		(= (end_day r62) 30)
		(= (end_day r63) 21)
		(= (end_day r64) 9)
		(= (end_day r65) 25)
		(= (end_day r66) 30)
		(= (end_day r67) 28)
		(= (tamano h0) 4)
		(= (tamano h1) 4)
		(= (tamano h2) 3)
		(= (tamano h3) 4)
		(= (tamano h4) 4)
		(= (tamano h5) 3)
		(= (tamano h6) 1)
		(= (tamano h7) 3)
		(= (tamano h8) 3)
		(= (tamano h9) 3)
		(= (tamano h10) 1)
		(= (tamano h11) 1)
		(= (tamano h12) 3)
		(= (tamano h13) 4)
		(= (tamano h14) 4)
		(= (tamano h15) 4)
		(= (tamano h16) 4)
		(= (tamano r0) 3)
		(= (tamano r1) 1)
		(= (tamano r2) 4)
		(= (tamano r3) 1)
		(= (tamano r4) 3)
		(= (tamano r5) 2)
		(= (tamano r6) 1)
		(= (tamano r7) 2)
		(= (tamano r8) 1)
		(= (tamano r9) 1)
		(= (tamano r10) 2)
		(= (tamano r11) 1)
		(= (tamano r12) 2)
		(= (tamano r13) 2)
		(= (tamano r14) 4)
		(= (tamano r15) 3)
		(= (tamano r16) 2)
		(= (tamano r17) 2)
		(= (tamano r18) 3)
		(= (tamano r19) 3)
		(= (tamano r20) 3)
		(= (tamano r21) 1)
		(= (tamano r22) 2)
		(= (tamano r23) 4)
		(= (tamano r24) 2)
		(= (tamano r25) 1)
		(= (tamano r26) 2)
		(= (tamano r27) 2)
		(= (tamano r28) 3)
		(= (tamano r29) 4)
		(= (tamano r30) 4)
		(= (tamano r31) 1)
		(= (tamano r32) 2)
		(= (tamano r33) 4)
		(= (tamano r34) 2)
		(= (tamano r35) 1)
		(= (tamano r36) 3)
		(= (tamano r37) 4)
		(= (tamano r38) 3)
		(= (tamano r39) 4)
		(= (tamano r40) 3)
		(= (tamano r41) 3)
		(= (tamano r42) 3)
		(= (tamano r43) 3)
		(= (tamano r44) 4)
		(= (tamano r45) 1)
		(= (tamano r46) 3)
		(= (tamano r47) 3)
		(= (tamano r48) 2)
		(= (tamano r49) 1)
		(= (tamano r50) 1)
		(= (tamano r51) 3)
		(= (tamano r52) 3)
		(= (tamano r53) 1)
		(= (tamano r54) 4)
		(= (tamano r55) 3)
		(= (tamano r56) 3)
		(= (tamano r57) 4)
		(= (tamano r58) 2)
		(= (tamano r59) 3)
		(= (tamano r60) 3)
		(= (tamano r61) 1)
		(= (tamano r62) 2)
		(= (tamano r63) 4)
		(= (tamano r64) 3)
		(= (tamano r65) 4)
		(= (tamano r66) 3)
		(= (tamano r67) 1)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric maximize (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (cantidad_reservas) 68)))
)