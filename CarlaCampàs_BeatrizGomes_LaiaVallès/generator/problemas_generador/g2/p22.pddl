(define (problem p22) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 r68 r69 r70 r71 r72 r73 r74 r75 r76 r77 r78 r79 r80 r81 r82 r83 r84 r85 r86 r87 - reserva
	)
	(:init
		(= (reservas_libres) 88)
		(= (start_day r0) 27)
		(= (start_day r1) 17)
		(= (start_day r2) 24)
		(= (start_day r3) 5)
		(= (start_day r4) 12)
		(= (start_day r5) 21)
		(= (start_day r6) 12)
		(= (start_day r7) 6)
		(= (start_day r8) 29)
		(= (start_day r9) 20)
		(= (start_day r10) 22)
		(= (start_day r11) 16)
		(= (start_day r12) 1)
		(= (start_day r13) 2)
		(= (start_day r14) 6)
		(= (start_day r15) 10)
		(= (start_day r16) 28)
		(= (start_day r17) 15)
		(= (start_day r18) 23)
		(= (start_day r19) 28)
		(= (start_day r20) 16)
		(= (start_day r21) 16)
		(= (start_day r22) 2)
		(= (start_day r23) 21)
		(= (start_day r24) 23)
		(= (start_day r25) 5)
		(= (start_day r26) 18)
		(= (start_day r27) 2)
		(= (start_day r28) 28)
		(= (start_day r29) 9)
		(= (start_day r30) 21)
		(= (start_day r31) 25)
		(= (start_day r32) 12)
		(= (start_day r33) 29)
		(= (start_day r34) 22)
		(= (start_day r35) 27)
		(= (start_day r36) 26)
		(= (start_day r37) 10)
		(= (start_day r38) 16)
		(= (start_day r39) 23)
		(= (start_day r40) 25)
		(= (start_day r41) 26)
		(= (start_day r42) 4)
		(= (start_day r43) 8)
		(= (start_day r44) 9)
		(= (start_day r45) 6)
		(= (start_day r46) 10)
		(= (start_day r47) 6)
		(= (start_day r48) 26)
		(= (start_day r49) 22)
		(= (start_day r50) 25)
		(= (start_day r51) 14)
		(= (start_day r52) 2)
		(= (start_day r53) 26)
		(= (start_day r54) 23)
		(= (start_day r55) 17)
		(= (start_day r56) 24)
		(= (start_day r57) 15)
		(= (start_day r58) 20)
		(= (start_day r59) 24)
		(= (start_day r60) 4)
		(= (start_day r61) 29)
		(= (start_day r62) 3)
		(= (start_day r63) 10)
		(= (start_day r64) 2)
		(= (start_day r65) 8)
		(= (start_day r66) 1)
		(= (start_day r67) 5)
		(= (start_day r68) 2)
		(= (start_day r69) 1)
		(= (start_day r70) 18)
		(= (start_day r71) 13)
		(= (start_day r72) 3)
		(= (start_day r73) 21)
		(= (start_day r74) 18)
		(= (start_day r75) 25)
		(= (start_day r76) 16)
		(= (start_day r77) 17)
		(= (start_day r78) 29)
		(= (start_day r79) 3)
		(= (start_day r80) 19)
		(= (start_day r81) 25)
		(= (start_day r82) 24)
		(= (start_day r83) 11)
		(= (start_day r84) 29)
		(= (start_day r85) 5)
		(= (start_day r86) 3)
		(= (start_day r87) 5)
		(= (end_day r0) 30)
		(= (end_day r1) 18)
		(= (end_day r2) 28)
		(= (end_day r3) 24)
		(= (end_day r4) 28)
		(= (end_day r5) 24)
		(= (end_day r6) 19)
		(= (end_day r7) 7)
		(= (end_day r8) 30)
		(= (end_day r9) 26)
		(= (end_day r10) 25)
		(= (end_day r11) 22)
		(= (end_day r12) 10)
		(= (end_day r13) 30)
		(= (end_day r14) 28)
		(= (end_day r15) 24)
		(= (end_day r16) 30)
		(= (end_day r17) 21)
		(= (end_day r18) 27)
		(= (end_day r19) 29)
		(= (end_day r20) 18)
		(= (end_day r21) 29)
		(= (end_day r22) 18)
		(= (end_day r23) 23)
		(= (end_day r24) 25)
		(= (end_day r25) 26)
		(= (end_day r26) 29)
		(= (end_day r27) 26)
		(= (end_day r28) 30)
		(= (end_day r29) 20)
		(= (end_day r30) 26)
		(= (end_day r31) 27)
		(= (end_day r32) 23)
		(= (end_day r33) 30)
		(= (end_day r34) 27)
		(= (end_day r35) 29)
		(= (end_day r36) 27)
		(= (end_day r37) 19)
		(= (end_day r38) 22)
		(= (end_day r39) 27)
		(= (end_day r40) 27)
		(= (end_day r41) 30)
		(= (end_day r42) 23)
		(= (end_day r43) 20)
		(= (end_day r44) 16)
		(= (end_day r45) 7)
		(= (end_day r46) 29)
		(= (end_day r47) 16)
		(= (end_day r48) 29)
		(= (end_day r49) 27)
		(= (end_day r50) 30)
		(= (end_day r51) 20)
		(= (end_day r52) 21)
		(= (end_day r53) 28)
		(= (end_day r54) 25)
		(= (end_day r55) 25)
		(= (end_day r56) 30)
		(= (end_day r57) 26)
		(= (end_day r58) 21)
		(= (end_day r59) 29)
		(= (end_day r60) 28)
		(= (end_day r61) 30)
		(= (end_day r62) 23)
		(= (end_day r63) 13)
		(= (end_day r64) 7)
		(= (end_day r65) 16)
		(= (end_day r66) 19)
		(= (end_day r67) 12)
		(= (end_day r68) 27)
		(= (end_day r69) 12)
		(= (end_day r70) 30)
		(= (end_day r71) 23)
		(= (end_day r72) 5)
		(= (end_day r73) 25)
		(= (end_day r74) 27)
		(= (end_day r75) 26)
		(= (end_day r76) 28)
		(= (end_day r77) 29)
		(= (end_day r78) 30)
		(= (end_day r79) 21)
		(= (end_day r80) 22)
		(= (end_day r81) 28)
		(= (end_day r82) 26)
		(= (end_day r83) 30)
		(= (end_day r84) 30)
		(= (end_day r85) 24)
		(= (end_day r86) 7)
		(= (end_day r87) 30)
		(= (tamano h0) 1)
		(= (tamano h1) 4)
		(= (tamano h2) 2)
		(= (tamano h3) 1)
		(= (tamano h4) 3)
		(= (tamano h5) 3)
		(= (tamano h6) 1)
		(= (tamano h7) 3)
		(= (tamano h8) 4)
		(= (tamano h9) 2)
		(= (tamano h10) 2)
		(= (tamano h11) 2)
		(= (tamano h12) 2)
		(= (tamano h13) 1)
		(= (tamano h14) 2)
		(= (tamano h15) 3)
		(= (tamano h16) 4)
		(= (tamano h17) 1)
		(= (tamano h18) 2)
		(= (tamano h19) 1)
		(= (tamano h20) 3)
		(= (tamano h21) 4)
		(= (tamano r0) 4)
		(= (tamano r1) 2)
		(= (tamano r2) 3)
		(= (tamano r3) 1)
		(= (tamano r4) 4)
		(= (tamano r5) 3)
		(= (tamano r6) 2)
		(= (tamano r7) 3)
		(= (tamano r8) 1)
		(= (tamano r9) 4)
		(= (tamano r10) 3)
		(= (tamano r11) 4)
		(= (tamano r12) 2)
		(= (tamano r13) 4)
		(= (tamano r14) 2)
		(= (tamano r15) 4)
		(= (tamano r16) 3)
		(= (tamano r17) 3)
		(= (tamano r18) 2)
		(= (tamano r19) 4)
		(= (tamano r20) 3)
		(= (tamano r21) 4)
		(= (tamano r22) 3)
		(= (tamano r23) 4)
		(= (tamano r24) 2)
		(= (tamano r25) 3)
		(= (tamano r26) 4)
		(= (tamano r27) 4)
		(= (tamano r28) 3)
		(= (tamano r29) 2)
		(= (tamano r30) 2)
		(= (tamano r31) 3)
		(= (tamano r32) 4)
		(= (tamano r33) 2)
		(= (tamano r34) 1)
		(= (tamano r35) 4)
		(= (tamano r36) 2)
		(= (tamano r37) 3)
		(= (tamano r38) 1)
		(= (tamano r39) 1)
		(= (tamano r40) 1)
		(= (tamano r41) 3)
		(= (tamano r42) 3)
		(= (tamano r43) 1)
		(= (tamano r44) 1)
		(= (tamano r45) 3)
		(= (tamano r46) 2)
		(= (tamano r47) 3)
		(= (tamano r48) 3)
		(= (tamano r49) 4)
		(= (tamano r50) 3)
		(= (tamano r51) 4)
		(= (tamano r52) 2)
		(= (tamano r53) 1)
		(= (tamano r54) 3)
		(= (tamano r55) 2)
		(= (tamano r56) 1)
		(= (tamano r57) 4)
		(= (tamano r58) 1)
		(= (tamano r59) 4)
		(= (tamano r60) 4)
		(= (tamano r61) 3)
		(= (tamano r62) 3)
		(= (tamano r63) 2)
		(= (tamano r64) 2)
		(= (tamano r65) 2)
		(= (tamano r66) 3)
		(= (tamano r67) 2)
		(= (tamano r68) 4)
		(= (tamano r69) 4)
		(= (tamano r70) 2)
		(= (tamano r71) 2)
		(= (tamano r72) 4)
		(= (tamano r73) 2)
		(= (tamano r74) 1)
		(= (tamano r75) 1)
		(= (tamano r76) 3)
		(= (tamano r77) 4)
		(= (tamano r78) 4)
		(= (tamano r79) 2)
		(= (tamano r80) 1)
		(= (tamano r81) 2)
		(= (tamano r82) 1)
		(= (tamano r83) 2)
		(= (tamano r84) 2)
		(= (tamano r85) 1)
		(= (tamano r86) 2)
		(= (tamano r87) 3)
		(= (pref_orient_no_servida) 51)
		(= (orientacion h0) 3)
		(= (orientacion h1) 0)
		(= (orientacion h2) 0)
		(= (orientacion h3) 0)
		(= (orientacion h4) 3)
		(= (orientacion h5) 2)
		(= (orientacion h6) 3)
		(= (orientacion h7) 3)
		(= (orientacion h8) 3)
		(= (orientacion h9) 0)
		(= (orientacion h10) 2)
		(= (orientacion h11) 1)
		(= (orientacion h12) 3)
		(= (orientacion h13) 3)
		(= (orientacion h14) 2)
		(= (orientacion h15) 1)
		(= (orientacion h16) 1)
		(= (orientacion h17) 0)
		(= (orientacion h18) 3)
		(= (orientacion h19) 3)
		(= (orientacion h20) 3)
		(= (orientacion h21) 1)
		(= (orientacion r0) 3)
		(= (orientacion r1) -1)
		(= (orientacion r2) 1)
		(= (orientacion r3) 0)
		(= (orientacion r4) 2)
		(= (orientacion r5) -1)
		(= (orientacion r6) 1)
		(= (orientacion r7) 3)
		(= (orientacion r8) 3)
		(= (orientacion r9) 2)
		(= (orientacion r10) 2)
		(= (orientacion r11) 1)
		(= (orientacion r12) -1)
		(= (orientacion r13) 0)
		(= (orientacion r14) -1)
		(= (orientacion r15) 1)
		(= (orientacion r16) 2)
		(= (orientacion r17) 3)
		(= (orientacion r18) -1)
		(= (orientacion r19) -1)
		(= (orientacion r20) 0)
		(= (orientacion r21) 1)
		(= (orientacion r22) 1)
		(= (orientacion r23) 0)
		(= (orientacion r24) 1)
		(= (orientacion r25) 1)
		(= (orientacion r26) 2)
		(= (orientacion r27) 1)
		(= (orientacion r28) -1)
		(= (orientacion r29) 0)
		(= (orientacion r30) -1)
		(= (orientacion r31) -1)
		(= (orientacion r32) 0)
		(= (orientacion r33) 2)
		(= (orientacion r34) -1)
		(= (orientacion r35) 3)
		(= (orientacion r36) 0)
		(= (orientacion r37) -1)
		(= (orientacion r38) 3)
		(= (orientacion r39) 0)
		(= (orientacion r40) -1)
		(= (orientacion r41) 0)
		(= (orientacion r42) 2)
		(= (orientacion r43) 2)
		(= (orientacion r44) 3)
		(= (orientacion r45) 3)
		(= (orientacion r46) 2)
		(= (orientacion r47) 2)
		(= (orientacion r48) 1)
		(= (orientacion r49) 0)
		(= (orientacion r50) -1)
		(= (orientacion r51) 1)
		(= (orientacion r52) 0)
		(= (orientacion r53) 1)
		(= (orientacion r54) 3)
		(= (orientacion r55) 2)
		(= (orientacion r56) 2)
		(= (orientacion r57) 2)
		(= (orientacion r58) 2)
		(= (orientacion r59) 0)
		(= (orientacion r60) 0)
		(= (orientacion r61) -1)
		(= (orientacion r62) -1)
		(= (orientacion r63) 3)
		(= (orientacion r64) 1)
		(= (orientacion r65) 3)
		(= (orientacion r66) -1)
		(= (orientacion r67) 0)
		(= (orientacion r68) 0)
		(= (orientacion r69) 3)
		(= (orientacion r70) 3)
		(= (orientacion r71) 2)
		(= (orientacion r72) 1)
		(= (orientacion r73) 3)
		(= (orientacion r74) 1)
		(= (orientacion r75) 1)
		(= (orientacion r76) -1)
		(= (orientacion r77) -1)
		(= (orientacion r78) 0)
		(= (orientacion r79) 1)
		(= (orientacion r80) 1)
		(= (orientacion r81) 2)
		(= (orientacion r82) 1)
		(= (orientacion r83) 2)
		(= (orientacion r84) -1)
		(= (orientacion r85) -1)
		(= (orientacion r86) 3)
		(= (orientacion r87) -1)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (+ (pref_orient_no_servida) (* (reservas_libres) 3)))
)