(define (problem p20) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 r68 r69 r70 r71 r72 r73 r74 r75 r76 r77 r78 r79 - reserva
	)
	(:init
		(= (cantidad_reservas) 0)
		(= (xctj_ocupacion) 0)
		(= (start_day r0) 16)
		(= (start_day r1) 3)
		(= (start_day r2) 2)
		(= (start_day r3) 9)
		(= (start_day r4) 5)
		(= (start_day r5) 10)
		(= (start_day r6) 14)
		(= (start_day r7) 6)
		(= (start_day r8) 26)
		(= (start_day r9) 22)
		(= (start_day r10) 24)
		(= (start_day r11) 7)
		(= (start_day r12) 4)
		(= (start_day r13) 1)
		(= (start_day r14) 9)
		(= (start_day r15) 1)
		(= (start_day r16) 9)
		(= (start_day r17) 11)
		(= (start_day r18) 10)
		(= (start_day r19) 14)
		(= (start_day r20) 5)
		(= (start_day r21) 13)
		(= (start_day r22) 13)
		(= (start_day r23) 28)
		(= (start_day r24) 9)
		(= (start_day r25) 28)
		(= (start_day r26) 21)
		(= (start_day r27) 2)
		(= (start_day r28) 11)
		(= (start_day r29) 11)
		(= (start_day r30) 21)
		(= (start_day r31) 17)
		(= (start_day r32) 8)
		(= (start_day r33) 25)
		(= (start_day r34) 3)
		(= (start_day r35) 26)
		(= (start_day r36) 25)
		(= (start_day r37) 13)
		(= (start_day r38) 5)
		(= (start_day r39) 11)
		(= (start_day r40) 13)
		(= (start_day r41) 22)
		(= (start_day r42) 12)
		(= (start_day r43) 29)
		(= (start_day r44) 16)
		(= (start_day r45) 9)
		(= (start_day r46) 4)
		(= (start_day r47) 3)
		(= (start_day r48) 15)
		(= (start_day r49) 7)
		(= (start_day r50) 5)
		(= (start_day r51) 27)
		(= (start_day r52) 23)
		(= (start_day r53) 19)
		(= (start_day r54) 20)
		(= (start_day r55) 11)
		(= (start_day r56) 29)
		(= (start_day r57) 16)
		(= (start_day r58) 1)
		(= (start_day r59) 23)
		(= (start_day r60) 11)
		(= (start_day r61) 16)
		(= (start_day r62) 25)
		(= (start_day r63) 5)
		(= (start_day r64) 4)
		(= (start_day r65) 2)
		(= (start_day r66) 20)
		(= (start_day r67) 29)
		(= (start_day r68) 13)
		(= (start_day r69) 20)
		(= (start_day r70) 26)
		(= (start_day r71) 3)
		(= (start_day r72) 9)
		(= (start_day r73) 20)
		(= (start_day r74) 17)
		(= (start_day r75) 7)
		(= (start_day r76) 5)
		(= (start_day r77) 27)
		(= (start_day r78) 10)
		(= (start_day r79) 17)
		(= (end_day r0) 22)
		(= (end_day r1) 30)
		(= (end_day r2) 28)
		(= (end_day r3) 24)
		(= (end_day r4) 27)
		(= (end_day r5) 24)
		(= (end_day r6) 21)
		(= (end_day r7) 27)
		(= (end_day r8) 30)
		(= (end_day r9) 26)
		(= (end_day r10) 27)
		(= (end_day r11) 14)
		(= (end_day r12) 29)
		(= (end_day r13) 12)
		(= (end_day r14) 13)
		(= (end_day r15) 13)
		(= (end_day r16) 14)
		(= (end_day r17) 28)
		(= (end_day r18) 26)
		(= (end_day r19) 30)
		(= (end_day r20) 20)
		(= (end_day r21) 15)
		(= (end_day r22) 16)
		(= (end_day r23) 29)
		(= (end_day r24) 21)
		(= (end_day r25) 30)
		(= (end_day r26) 23)
		(= (end_day r27) 18)
		(= (end_day r28) 15)
		(= (end_day r29) 18)
		(= (end_day r30) 29)
		(= (end_day r31) 25)
		(= (end_day r32) 14)
		(= (end_day r33) 26)
		(= (end_day r34) 23)
		(= (end_day r35) 29)
		(= (end_day r36) 27)
		(= (end_day r37) 27)
		(= (end_day r38) 12)
		(= (end_day r39) 26)
		(= (end_day r40) 15)
		(= (end_day r41) 30)
		(= (end_day r42) 28)
		(= (end_day r43) 30)
		(= (end_day r44) 26)
		(= (end_day r45) 11)
		(= (end_day r46) 9)
		(= (end_day r47) 30)
		(= (end_day r48) 21)
		(= (end_day r49) 12)
		(= (end_day r50) 12)
		(= (end_day r51) 29)
		(= (end_day r52) 26)
		(= (end_day r53) 23)
		(= (end_day r54) 30)
		(= (end_day r55) 24)
		(= (end_day r56) 30)
		(= (end_day r57) 29)
		(= (end_day r58) 21)
		(= (end_day r59) 30)
		(= (end_day r60) 19)
		(= (end_day r61) 27)
		(= (end_day r62) 27)
		(= (end_day r63) 13)
		(= (end_day r64) 19)
		(= (end_day r65) 17)
		(= (end_day r66) 25)
		(= (end_day r67) 30)
		(= (end_day r68) 25)
		(= (end_day r69) 23)
		(= (end_day r70) 30)
		(= (end_day r71) 27)
		(= (end_day r72) 16)
		(= (end_day r73) 30)
		(= (end_day r74) 26)
		(= (end_day r75) 26)
		(= (end_day r76) 22)
		(= (end_day r77) 30)
		(= (end_day r78) 16)
		(= (end_day r79) 25)
		(= (tamano h0) 4)
		(= (tamano h1) 3)
		(= (tamano h2) 2)
		(= (tamano h3) 2)
		(= (tamano h4) 4)
		(= (tamano h5) 3)
		(= (tamano h6) 2)
		(= (tamano h7) 1)
		(= (tamano h8) 4)
		(= (tamano h9) 2)
		(= (tamano h10) 1)
		(= (tamano h11) 1)
		(= (tamano h12) 3)
		(= (tamano h13) 2)
		(= (tamano h14) 1)
		(= (tamano h15) 3)
		(= (tamano h16) 3)
		(= (tamano h17) 1)
		(= (tamano h18) 2)
		(= (tamano h19) 3)
		(= (tamano r0) 1)
		(= (tamano r1) 4)
		(= (tamano r2) 1)
		(= (tamano r3) 2)
		(= (tamano r4) 3)
		(= (tamano r5) 2)
		(= (tamano r6) 1)
		(= (tamano r7) 1)
		(= (tamano r8) 2)
		(= (tamano r9) 3)
		(= (tamano r10) 3)
		(= (tamano r11) 2)
		(= (tamano r12) 1)
		(= (tamano r13) 3)
		(= (tamano r14) 3)
		(= (tamano r15) 1)
		(= (tamano r16) 1)
		(= (tamano r17) 2)
		(= (tamano r18) 3)
		(= (tamano r19) 3)
		(= (tamano r20) 1)
		(= (tamano r21) 1)
		(= (tamano r22) 2)
		(= (tamano r23) 4)
		(= (tamano r24) 1)
		(= (tamano r25) 4)
		(= (tamano r26) 3)
		(= (tamano r27) 3)
		(= (tamano r28) 4)
		(= (tamano r29) 3)
		(= (tamano r30) 4)
		(= (tamano r31) 2)
		(= (tamano r32) 4)
		(= (tamano r33) 2)
		(= (tamano r34) 2)
		(= (tamano r35) 3)
		(= (tamano r36) 3)
		(= (tamano r37) 4)
		(= (tamano r38) 3)
		(= (tamano r39) 2)
		(= (tamano r40) 2)
		(= (tamano r41) 1)
		(= (tamano r42) 3)
		(= (tamano r43) 1)
		(= (tamano r44) 2)
		(= (tamano r45) 2)
		(= (tamano r46) 1)
		(= (tamano r47) 4)
		(= (tamano r48) 3)
		(= (tamano r49) 4)
		(= (tamano r50) 1)
		(= (tamano r51) 4)
		(= (tamano r52) 1)
		(= (tamano r53) 3)
		(= (tamano r54) 4)
		(= (tamano r55) 2)
		(= (tamano r56) 3)
		(= (tamano r57) 4)
		(= (tamano r58) 1)
		(= (tamano r59) 2)
		(= (tamano r60) 2)
		(= (tamano r61) 4)
		(= (tamano r62) 2)
		(= (tamano r63) 4)
		(= (tamano r64) 2)
		(= (tamano r65) 1)
		(= (tamano r66) 2)
		(= (tamano r67) 4)
		(= (tamano r68) 3)
		(= (tamano r69) 3)
		(= (tamano r70) 3)
		(= (tamano r71) 2)
		(= (tamano r72) 3)
		(= (tamano r73) 2)
		(= (tamano r74) 2)
		(= (tamano r75) 4)
		(= (tamano r76) 4)
		(= (tamano r77) 4)
		(= (tamano r78) 3)
		(= (tamano r79) 4)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric maximize (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (cantidad_reservas) 80)))
)