(define (problem p24) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 r68 r69 r70 r71 r72 r73 r74 r75 r76 r77 r78 r79 r80 r81 r82 r83 r84 r85 r86 r87 r88 r89 r90 r91 r92 r93 r94 r95 - reserva
	)
	(:init
		(= (cantidad_reservas) 0)
		(= (xctj_ocupacion) 0)
		(= (start_day r0) 1)
		(= (start_day r1) 12)
		(= (start_day r2) 23)
		(= (start_day r3) 25)
		(= (start_day r4) 19)
		(= (start_day r5) 3)
		(= (start_day r6) 28)
		(= (start_day r7) 3)
		(= (start_day r8) 24)
		(= (start_day r9) 19)
		(= (start_day r10) 13)
		(= (start_day r11) 19)
		(= (start_day r12) 10)
		(= (start_day r13) 19)
		(= (start_day r14) 14)
		(= (start_day r15) 18)
		(= (start_day r16) 17)
		(= (start_day r17) 18)
		(= (start_day r18) 19)
		(= (start_day r19) 5)
		(= (start_day r20) 6)
		(= (start_day r21) 11)
		(= (start_day r22) 26)
		(= (start_day r23) 4)
		(= (start_day r24) 25)
		(= (start_day r25) 27)
		(= (start_day r26) 9)
		(= (start_day r27) 21)
		(= (start_day r28) 2)
		(= (start_day r29) 19)
		(= (start_day r30) 26)
		(= (start_day r31) 6)
		(= (start_day r32) 26)
		(= (start_day r33) 14)
		(= (start_day r34) 9)
		(= (start_day r35) 14)
		(= (start_day r36) 10)
		(= (start_day r37) 3)
		(= (start_day r38) 19)
		(= (start_day r39) 28)
		(= (start_day r40) 8)
		(= (start_day r41) 13)
		(= (start_day r42) 23)
		(= (start_day r43) 16)
		(= (start_day r44) 9)
		(= (start_day r45) 12)
		(= (start_day r46) 3)
		(= (start_day r47) 5)
		(= (start_day r48) 25)
		(= (start_day r49) 28)
		(= (start_day r50) 25)
		(= (start_day r51) 6)
		(= (start_day r52) 15)
		(= (start_day r53) 25)
		(= (start_day r54) 21)
		(= (start_day r55) 3)
		(= (start_day r56) 3)
		(= (start_day r57) 5)
		(= (start_day r58) 21)
		(= (start_day r59) 18)
		(= (start_day r60) 16)
		(= (start_day r61) 3)
		(= (start_day r62) 8)
		(= (start_day r63) 9)
		(= (start_day r64) 12)
		(= (start_day r65) 10)
		(= (start_day r66) 9)
		(= (start_day r67) 24)
		(= (start_day r68) 22)
		(= (start_day r69) 16)
		(= (start_day r70) 4)
		(= (start_day r71) 11)
		(= (start_day r72) 10)
		(= (start_day r73) 18)
		(= (start_day r74) 5)
		(= (start_day r75) 11)
		(= (start_day r76) 8)
		(= (start_day r77) 18)
		(= (start_day r78) 21)
		(= (start_day r79) 1)
		(= (start_day r80) 6)
		(= (start_day r81) 10)
		(= (start_day r82) 17)
		(= (start_day r83) 3)
		(= (start_day r84) 4)
		(= (start_day r85) 10)
		(= (start_day r86) 26)
		(= (start_day r87) 19)
		(= (start_day r88) 10)
		(= (start_day r89) 7)
		(= (start_day r90) 5)
		(= (start_day r91) 9)
		(= (start_day r92) 16)
		(= (start_day r93) 26)
		(= (start_day r94) 18)
		(= (start_day r95) 22)
		(= (end_day r0) 29)
		(= (end_day r1) 21)
		(= (end_day r2) 26)
		(= (end_day r3) 28)
		(= (end_day r4) 20)
		(= (end_day r5) 18)
		(= (end_day r6) 29)
		(= (end_day r7) 7)
		(= (end_day r8) 27)
		(= (end_day r9) 26)
		(= (end_day r10) 25)
		(= (end_day r11) 22)
		(= (end_day r12) 20)
		(= (end_day r13) 30)
		(= (end_day r14) 29)
		(= (end_day r15) 21)
		(= (end_day r16) 19)
		(= (end_day r17) 30)
		(= (end_day r18) 27)
		(= (end_day r19) 10)
		(= (end_day r20) 21)
		(= (end_day r21) 25)
		(= (end_day r22) 28)
		(= (end_day r23) 22)
		(= (end_day r24) 26)
		(= (end_day r25) 29)
		(= (end_day r26) 15)
		(= (end_day r27) 22)
		(= (end_day r28) 19)
		(= (end_day r29) 20)
		(= (end_day r30) 30)
		(= (end_day r31) 14)
		(= (end_day r32) 27)
		(= (end_day r33) 27)
		(= (end_day r34) 12)
		(= (end_day r35) 20)
		(= (end_day r36) 25)
		(= (end_day r37) 19)
		(= (end_day r38) 25)
		(= (end_day r39) 29)
		(= (end_day r40) 18)
		(= (end_day r41) 24)
		(= (end_day r42) 30)
		(= (end_day r43) 20)
		(= (end_day r44) 25)
		(= (end_day r45) 20)
		(= (end_day r46) 15)
		(= (end_day r47) 12)
		(= (end_day r48) 30)
		(= (end_day r49) 30)
		(= (end_day r50) 30)
		(= (end_day r51) 25)
		(= (end_day r52) 16)
		(= (end_day r53) 26)
		(= (end_day r54) 22)
		(= (end_day r55) 11)
		(= (end_day r56) 9)
		(= (end_day r57) 16)
		(= (end_day r58) 24)
		(= (end_day r59) 27)
		(= (end_day r60) 23)
		(= (end_day r61) 16)
		(= (end_day r62) 28)
		(= (end_day r63) 30)
		(= (end_day r64) 13)
		(= (end_day r65) 29)
		(= (end_day r66) 10)
		(= (end_day r67) 29)
		(= (end_day r68) 26)
		(= (end_day r69) 27)
		(= (end_day r70) 24)
		(= (end_day r71) 29)
		(= (end_day r72) 30)
		(= (end_day r73) 27)
		(= (end_day r74) 14)
		(= (end_day r75) 30)
		(= (end_day r76) 15)
		(= (end_day r77) 27)
		(= (end_day r78) 26)
		(= (end_day r79) 29)
		(= (end_day r80) 26)
		(= (end_day r81) 27)
		(= (end_day r82) 28)
		(= (end_day r83) 21)
		(= (end_day r84) 7)
		(= (end_day r85) 26)
		(= (end_day r86) 27)
		(= (end_day r87) 30)
		(= (end_day r88) 24)
		(= (end_day r89) 28)
		(= (end_day r90) 9)
		(= (end_day r91) 27)
		(= (end_day r92) 27)
		(= (end_day r93) 30)
		(= (end_day r94) 20)
		(= (end_day r95) 26)
		(= (tamano h0) 1)
		(= (tamano h1) 4)
		(= (tamano h2) 1)
		(= (tamano h3) 2)
		(= (tamano h4) 3)
		(= (tamano h5) 4)
		(= (tamano h6) 2)
		(= (tamano h7) 2)
		(= (tamano h8) 2)
		(= (tamano h9) 3)
		(= (tamano h10) 3)
		(= (tamano h11) 1)
		(= (tamano h12) 3)
		(= (tamano h13) 3)
		(= (tamano h14) 2)
		(= (tamano h15) 3)
		(= (tamano h16) 2)
		(= (tamano h17) 2)
		(= (tamano h18) 1)
		(= (tamano h19) 4)
		(= (tamano h20) 2)
		(= (tamano h21) 3)
		(= (tamano h22) 3)
		(= (tamano h23) 3)
		(= (tamano r0) 2)
		(= (tamano r1) 4)
		(= (tamano r2) 3)
		(= (tamano r3) 4)
		(= (tamano r4) 4)
		(= (tamano r5) 4)
		(= (tamano r6) 1)
		(= (tamano r7) 3)
		(= (tamano r8) 2)
		(= (tamano r9) 4)
		(= (tamano r10) 3)
		(= (tamano r11) 2)
		(= (tamano r12) 4)
		(= (tamano r13) 2)
		(= (tamano r14) 4)
		(= (tamano r15) 4)
		(= (tamano r16) 4)
		(= (tamano r17) 4)
		(= (tamano r18) 4)
		(= (tamano r19) 3)
		(= (tamano r20) 3)
		(= (tamano r21) 2)
		(= (tamano r22) 4)
		(= (tamano r23) 3)
		(= (tamano r24) 1)
		(= (tamano r25) 4)
		(= (tamano r26) 4)
		(= (tamano r27) 2)
		(= (tamano r28) 4)
		(= (tamano r29) 3)
		(= (tamano r30) 4)
		(= (tamano r31) 2)
		(= (tamano r32) 2)
		(= (tamano r33) 1)
		(= (tamano r34) 3)
		(= (tamano r35) 2)
		(= (tamano r36) 2)
		(= (tamano r37) 2)
		(= (tamano r38) 3)
		(= (tamano r39) 2)
		(= (tamano r40) 1)
		(= (tamano r41) 4)
		(= (tamano r42) 4)
		(= (tamano r43) 4)
		(= (tamano r44) 3)
		(= (tamano r45) 4)
		(= (tamano r46) 1)
		(= (tamano r47) 2)
		(= (tamano r48) 1)
		(= (tamano r49) 1)
		(= (tamano r50) 2)
		(= (tamano r51) 4)
		(= (tamano r52) 4)
		(= (tamano r53) 2)
		(= (tamano r54) 1)
		(= (tamano r55) 1)
		(= (tamano r56) 2)
		(= (tamano r57) 1)
		(= (tamano r58) 2)
		(= (tamano r59) 1)
		(= (tamano r60) 4)
		(= (tamano r61) 4)
		(= (tamano r62) 2)
		(= (tamano r63) 4)
		(= (tamano r64) 2)
		(= (tamano r65) 3)
		(= (tamano r66) 1)
		(= (tamano r67) 3)
		(= (tamano r68) 2)
		(= (tamano r69) 1)
		(= (tamano r70) 4)
		(= (tamano r71) 2)
		(= (tamano r72) 4)
		(= (tamano r73) 2)
		(= (tamano r74) 1)
		(= (tamano r75) 3)
		(= (tamano r76) 2)
		(= (tamano r77) 3)
		(= (tamano r78) 4)
		(= (tamano r79) 3)
		(= (tamano r80) 2)
		(= (tamano r81) 2)
		(= (tamano r82) 4)
		(= (tamano r83) 1)
		(= (tamano r84) 2)
		(= (tamano r85) 3)
		(= (tamano r86) 2)
		(= (tamano r87) 4)
		(= (tamano r88) 4)
		(= (tamano r89) 4)
		(= (tamano r90) 4)
		(= (tamano r91) 2)
		(= (tamano r92) 3)
		(= (tamano r93) 3)
		(= (tamano r94) 3)
		(= (tamano r95) 3)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric maximize (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (cantidad_reservas) 96)))
)