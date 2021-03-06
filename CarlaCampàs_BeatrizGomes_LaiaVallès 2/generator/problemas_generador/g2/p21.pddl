(define (problem p21) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 r68 r69 r70 r71 r72 r73 r74 r75 r76 r77 r78 r79 r80 r81 r82 r83 - reserva
	)
	(:init
		(= (reservas_libres) 84)
		(= (start_day r0) 24)
		(= (start_day r1) 15)
		(= (start_day r2) 8)
		(= (start_day r3) 23)
		(= (start_day r4) 26)
		(= (start_day r5) 24)
		(= (start_day r6) 1)
		(= (start_day r7) 20)
		(= (start_day r8) 6)
		(= (start_day r9) 28)
		(= (start_day r10) 27)
		(= (start_day r11) 9)
		(= (start_day r12) 8)
		(= (start_day r13) 2)
		(= (start_day r14) 28)
		(= (start_day r15) 5)
		(= (start_day r16) 25)
		(= (start_day r17) 5)
		(= (start_day r18) 22)
		(= (start_day r19) 14)
		(= (start_day r20) 21)
		(= (start_day r21) 26)
		(= (start_day r22) 24)
		(= (start_day r23) 26)
		(= (start_day r24) 24)
		(= (start_day r25) 6)
		(= (start_day r26) 11)
		(= (start_day r27) 28)
		(= (start_day r28) 17)
		(= (start_day r29) 10)
		(= (start_day r30) 5)
		(= (start_day r31) 17)
		(= (start_day r32) 21)
		(= (start_day r33) 24)
		(= (start_day r34) 8)
		(= (start_day r35) 18)
		(= (start_day r36) 4)
		(= (start_day r37) 9)
		(= (start_day r38) 26)
		(= (start_day r39) 2)
		(= (start_day r40) 10)
		(= (start_day r41) 14)
		(= (start_day r42) 10)
		(= (start_day r43) 2)
		(= (start_day r44) 1)
		(= (start_day r45) 10)
		(= (start_day r46) 29)
		(= (start_day r47) 8)
		(= (start_day r48) 19)
		(= (start_day r49) 7)
		(= (start_day r50) 5)
		(= (start_day r51) 7)
		(= (start_day r52) 24)
		(= (start_day r53) 26)
		(= (start_day r54) 6)
		(= (start_day r55) 28)
		(= (start_day r56) 18)
		(= (start_day r57) 23)
		(= (start_day r58) 27)
		(= (start_day r59) 9)
		(= (start_day r60) 2)
		(= (start_day r61) 26)
		(= (start_day r62) 14)
		(= (start_day r63) 1)
		(= (start_day r64) 19)
		(= (start_day r65) 24)
		(= (start_day r66) 22)
		(= (start_day r67) 23)
		(= (start_day r68) 21)
		(= (start_day r69) 17)
		(= (start_day r70) 1)
		(= (start_day r71) 27)
		(= (start_day r72) 28)
		(= (start_day r73) 18)
		(= (start_day r74) 18)
		(= (start_day r75) 11)
		(= (start_day r76) 24)
		(= (start_day r77) 23)
		(= (start_day r78) 23)
		(= (start_day r79) 3)
		(= (start_day r80) 13)
		(= (start_day r81) 23)
		(= (start_day r82) 27)
		(= (start_day r83) 16)
		(= (end_day r0) 26)
		(= (end_day r1) 20)
		(= (end_day r2) 18)
		(= (end_day r3) 28)
		(= (end_day r4) 27)
		(= (end_day r5) 25)
		(= (end_day r6) 27)
		(= (end_day r7) 22)
		(= (end_day r8) 24)
		(= (end_day r9) 29)
		(= (end_day r10) 28)
		(= (end_day r11) 19)
		(= (end_day r12) 19)
		(= (end_day r13) 27)
		(= (end_day r14) 30)
		(= (end_day r15) 24)
		(= (end_day r16) 28)
		(= (end_day r17) 22)
		(= (end_day r18) 29)
		(= (end_day r19) 24)
		(= (end_day r20) 29)
		(= (end_day r21) 28)
		(= (end_day r22) 28)
		(= (end_day r23) 27)
		(= (end_day r24) 28)
		(= (end_day r25) 26)
		(= (end_day r26) 24)
		(= (end_day r27) 29)
		(= (end_day r28) 26)
		(= (end_day r29) 11)
		(= (end_day r30) 27)
		(= (end_day r31) 22)
		(= (end_day r32) 23)
		(= (end_day r33) 25)
		(= (end_day r34) 28)
		(= (end_day r35) 29)
		(= (end_day r36) 17)
		(= (end_day r37) 20)
		(= (end_day r38) 27)
		(= (end_day r39) 12)
		(= (end_day r40) 17)
		(= (end_day r41) 25)
		(= (end_day r42) 18)
		(= (end_day r43) 26)
		(= (end_day r44) 24)
		(= (end_day r45) 29)
		(= (end_day r46) 30)
		(= (end_day r47) 11)
		(= (end_day r48) 24)
		(= (end_day r49) 22)
		(= (end_day r50) 30)
		(= (end_day r51) 21)
		(= (end_day r52) 25)
		(= (end_day r53) 27)
		(= (end_day r54) 23)
		(= (end_day r55) 30)
		(= (end_day r56) 24)
		(= (end_day r57) 25)
		(= (end_day r58) 29)
		(= (end_day r59) 13)
		(= (end_day r60) 30)
		(= (end_day r61) 27)
		(= (end_day r62) 21)
		(= (end_day r63) 5)
		(= (end_day r64) 29)
		(= (end_day r65) 30)
		(= (end_day r66) 26)
		(= (end_day r67) 26)
		(= (end_day r68) 23)
		(= (end_day r69) 20)
		(= (end_day r70) 15)
		(= (end_day r71) 30)
		(= (end_day r72) 29)
		(= (end_day r73) 24)
		(= (end_day r74) 24)
		(= (end_day r75) 12)
		(= (end_day r76) 29)
		(= (end_day r77) 25)
		(= (end_day r78) 28)
		(= (end_day r79) 25)
		(= (end_day r80) 28)
		(= (end_day r81) 25)
		(= (end_day r82) 28)
		(= (end_day r83) 18)
		(= (tamano h0) 3)
		(= (tamano h1) 4)
		(= (tamano h2) 4)
		(= (tamano h3) 4)
		(= (tamano h4) 1)
		(= (tamano h5) 2)
		(= (tamano h6) 1)
		(= (tamano h7) 4)
		(= (tamano h8) 3)
		(= (tamano h9) 3)
		(= (tamano h10) 4)
		(= (tamano h11) 4)
		(= (tamano h12) 2)
		(= (tamano h13) 4)
		(= (tamano h14) 4)
		(= (tamano h15) 1)
		(= (tamano h16) 2)
		(= (tamano h17) 3)
		(= (tamano h18) 4)
		(= (tamano h19) 1)
		(= (tamano h20) 1)
		(= (tamano r0) 3)
		(= (tamano r1) 4)
		(= (tamano r2) 3)
		(= (tamano r3) 4)
		(= (tamano r4) 3)
		(= (tamano r5) 2)
		(= (tamano r6) 3)
		(= (tamano r7) 2)
		(= (tamano r8) 3)
		(= (tamano r9) 1)
		(= (tamano r10) 1)
		(= (tamano r11) 4)
		(= (tamano r12) 4)
		(= (tamano r13) 3)
		(= (tamano r14) 3)
		(= (tamano r15) 2)
		(= (tamano r16) 1)
		(= (tamano r17) 1)
		(= (tamano r18) 2)
		(= (tamano r19) 3)
		(= (tamano r20) 3)
		(= (tamano r21) 1)
		(= (tamano r22) 2)
		(= (tamano r23) 4)
		(= (tamano r24) 3)
		(= (tamano r25) 3)
		(= (tamano r26) 4)
		(= (tamano r27) 2)
		(= (tamano r28) 3)
		(= (tamano r29) 4)
		(= (tamano r30) 3)
		(= (tamano r31) 2)
		(= (tamano r32) 1)
		(= (tamano r33) 4)
		(= (tamano r34) 3)
		(= (tamano r35) 2)
		(= (tamano r36) 2)
		(= (tamano r37) 4)
		(= (tamano r38) 3)
		(= (tamano r39) 3)
		(= (tamano r40) 4)
		(= (tamano r41) 2)
		(= (tamano r42) 4)
		(= (tamano r43) 1)
		(= (tamano r44) 3)
		(= (tamano r45) 2)
		(= (tamano r46) 3)
		(= (tamano r47) 2)
		(= (tamano r48) 1)
		(= (tamano r49) 1)
		(= (tamano r50) 1)
		(= (tamano r51) 2)
		(= (tamano r52) 4)
		(= (tamano r53) 4)
		(= (tamano r54) 2)
		(= (tamano r55) 1)
		(= (tamano r56) 3)
		(= (tamano r57) 2)
		(= (tamano r58) 4)
		(= (tamano r59) 2)
		(= (tamano r60) 1)
		(= (tamano r61) 4)
		(= (tamano r62) 2)
		(= (tamano r63) 3)
		(= (tamano r64) 2)
		(= (tamano r65) 1)
		(= (tamano r66) 2)
		(= (tamano r67) 3)
		(= (tamano r68) 3)
		(= (tamano r69) 2)
		(= (tamano r70) 2)
		(= (tamano r71) 3)
		(= (tamano r72) 3)
		(= (tamano r73) 4)
		(= (tamano r74) 1)
		(= (tamano r75) 3)
		(= (tamano r76) 2)
		(= (tamano r77) 2)
		(= (tamano r78) 4)
		(= (tamano r79) 2)
		(= (tamano r80) 3)
		(= (tamano r81) 1)
		(= (tamano r82) 2)
		(= (tamano r83) 2)
		(= (pref_orient_no_servida) 59)
		(= (orientacion h0) 3)
		(= (orientacion h1) 1)
		(= (orientacion h2) 2)
		(= (orientacion h3) 1)
		(= (orientacion h4) 2)
		(= (orientacion h5) 0)
		(= (orientacion h6) 3)
		(= (orientacion h7) 2)
		(= (orientacion h8) 3)
		(= (orientacion h9) 3)
		(= (orientacion h10) 1)
		(= (orientacion h11) 1)
		(= (orientacion h12) 0)
		(= (orientacion h13) 2)
		(= (orientacion h14) 0)
		(= (orientacion h15) 0)
		(= (orientacion h16) 2)
		(= (orientacion h17) 3)
		(= (orientacion h18) 1)
		(= (orientacion h19) 2)
		(= (orientacion h20) 2)
		(= (orientacion r0) 1)
		(= (orientacion r1) 0)
		(= (orientacion r2) 3)
		(= (orientacion r3) 2)
		(= (orientacion r4) 2)
		(= (orientacion r5) 2)
		(= (orientacion r6) -1)
		(= (orientacion r7) 3)
		(= (orientacion r8) 1)
		(= (orientacion r9) 3)
		(= (orientacion r10) 2)
		(= (orientacion r11) 1)
		(= (orientacion r12) -1)
		(= (orientacion r13) 3)
		(= (orientacion r14) 1)
		(= (orientacion r15) -1)
		(= (orientacion r16) 1)
		(= (orientacion r17) 1)
		(= (orientacion r18) 2)
		(= (orientacion r19) -1)
		(= (orientacion r20) 0)
		(= (orientacion r21) -1)
		(= (orientacion r22) 3)
		(= (orientacion r23) 0)
		(= (orientacion r24) 0)
		(= (orientacion r25) 1)
		(= (orientacion r26) 2)
		(= (orientacion r27) 3)
		(= (orientacion r28) 3)
		(= (orientacion r29) 3)
		(= (orientacion r30) 2)
		(= (orientacion r31) 3)
		(= (orientacion r32) 2)
		(= (orientacion r33) 3)
		(= (orientacion r34) 0)
		(= (orientacion r35) 0)
		(= (orientacion r36) 2)
		(= (orientacion r37) 1)
		(= (orientacion r38) 1)
		(= (orientacion r39) 2)
		(= (orientacion r40) -1)
		(= (orientacion r41) 0)
		(= (orientacion r42) 3)
		(= (orientacion r43) 0)
		(= (orientacion r44) 0)
		(= (orientacion r45) 2)
		(= (orientacion r46) 2)
		(= (orientacion r47) 1)
		(= (orientacion r48) 3)
		(= (orientacion r49) 0)
		(= (orientacion r50) 2)
		(= (orientacion r51) 1)
		(= (orientacion r52) 2)
		(= (orientacion r53) 2)
		(= (orientacion r54) 2)
		(= (orientacion r55) 3)
		(= (orientacion r56) 3)
		(= (orientacion r57) 3)
		(= (orientacion r58) 3)
		(= (orientacion r59) 0)
		(= (orientacion r60) 3)
		(= (orientacion r61) 3)
		(= (orientacion r62) 0)
		(= (orientacion r63) 2)
		(= (orientacion r64) 0)
		(= (orientacion r65) 1)
		(= (orientacion r66) -1)
		(= (orientacion r67) 3)
		(= (orientacion r68) -1)
		(= (orientacion r69) -1)
		(= (orientacion r70) 0)
		(= (orientacion r71) 1)
		(= (orientacion r72) -1)
		(= (orientacion r73) 1)
		(= (orientacion r74) 0)
		(= (orientacion r75) 2)
		(= (orientacion r76) 2)
		(= (orientacion r77) 1)
		(= (orientacion r78) 1)
		(= (orientacion r79) 3)
		(= (orientacion r80) 2)
		(= (orientacion r81) 2)
		(= (orientacion r82) 3)
		(= (orientacion r83) 2)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (+ (pref_orient_no_servida) (* (reservas_libres) 3)))
)