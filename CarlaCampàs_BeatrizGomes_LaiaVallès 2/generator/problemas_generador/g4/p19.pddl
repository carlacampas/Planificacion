(define (problem p19) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 r68 r69 r70 r71 r72 r73 r74 r75 - reserva
	)
	(:init
		(= (cantidad_reservas) 0)
		(= (xctj_ocupacion) 0)
		(= (habitaciones_unused) 19)
		(= (start_day r0) 6)
		(= (start_day r1) 26)
		(= (start_day r2) 6)
		(= (start_day r3) 11)
		(= (start_day r4) 10)
		(= (start_day r5) 22)
		(= (start_day r6) 28)
		(= (start_day r7) 21)
		(= (start_day r8) 29)
		(= (start_day r9) 11)
		(= (start_day r10) 25)
		(= (start_day r11) 21)
		(= (start_day r12) 12)
		(= (start_day r13) 4)
		(= (start_day r14) 4)
		(= (start_day r15) 18)
		(= (start_day r16) 1)
		(= (start_day r17) 28)
		(= (start_day r18) 21)
		(= (start_day r19) 15)
		(= (start_day r20) 21)
		(= (start_day r21) 26)
		(= (start_day r22) 15)
		(= (start_day r23) 9)
		(= (start_day r24) 28)
		(= (start_day r25) 24)
		(= (start_day r26) 15)
		(= (start_day r27) 11)
		(= (start_day r28) 18)
		(= (start_day r29) 9)
		(= (start_day r30) 12)
		(= (start_day r31) 21)
		(= (start_day r32) 10)
		(= (start_day r33) 15)
		(= (start_day r34) 10)
		(= (start_day r35) 6)
		(= (start_day r36) 28)
		(= (start_day r37) 20)
		(= (start_day r38) 9)
		(= (start_day r39) 13)
		(= (start_day r40) 12)
		(= (start_day r41) 20)
		(= (start_day r42) 24)
		(= (start_day r43) 16)
		(= (start_day r44) 11)
		(= (start_day r45) 9)
		(= (start_day r46) 22)
		(= (start_day r47) 2)
		(= (start_day r48) 23)
		(= (start_day r49) 20)
		(= (start_day r50) 18)
		(= (start_day r51) 6)
		(= (start_day r52) 26)
		(= (start_day r53) 17)
		(= (start_day r54) 9)
		(= (start_day r55) 13)
		(= (start_day r56) 29)
		(= (start_day r57) 19)
		(= (start_day r58) 19)
		(= (start_day r59) 9)
		(= (start_day r60) 2)
		(= (start_day r61) 20)
		(= (start_day r62) 25)
		(= (start_day r63) 29)
		(= (start_day r64) 1)
		(= (start_day r65) 23)
		(= (start_day r66) 21)
		(= (start_day r67) 19)
		(= (start_day r68) 13)
		(= (start_day r69) 5)
		(= (start_day r70) 7)
		(= (start_day r71) 29)
		(= (start_day r72) 26)
		(= (start_day r73) 29)
		(= (start_day r74) 6)
		(= (start_day r75) 22)
		(= (end_day r0) 13)
		(= (end_day r1) 30)
		(= (end_day r2) 21)
		(= (end_day r3) 25)
		(= (end_day r4) 13)
		(= (end_day r5) 24)
		(= (end_day r6) 29)
		(= (end_day r7) 24)
		(= (end_day r8) 30)
		(= (end_day r9) 24)
		(= (end_day r10) 29)
		(= (end_day r11) 27)
		(= (end_day r12) 27)
		(= (end_day r13) 27)
		(= (end_day r14) 27)
		(= (end_day r15) 23)
		(= (end_day r16) 4)
		(= (end_day r17) 29)
		(= (end_day r18) 23)
		(= (end_day r19) 26)
		(= (end_day r20) 26)
		(= (end_day r21) 28)
		(= (end_day r22) 25)
		(= (end_day r23) 16)
		(= (end_day r24) 29)
		(= (end_day r25) 26)
		(= (end_day r26) 27)
		(= (end_day r27) 28)
		(= (end_day r28) 26)
		(= (end_day r29) 14)
		(= (end_day r30) 21)
		(= (end_day r31) 23)
		(= (end_day r32) 15)
		(= (end_day r33) 17)
		(= (end_day r34) 11)
		(= (end_day r35) 20)
		(= (end_day r36) 30)
		(= (end_day r37) 26)
		(= (end_day r38) 27)
		(= (end_day r39) 16)
		(= (end_day r40) 21)
		(= (end_day r41) 22)
		(= (end_day r42) 25)
		(= (end_day r43) 27)
		(= (end_day r44) 26)
		(= (end_day r45) 17)
		(= (end_day r46) 25)
		(= (end_day r47) 25)
		(= (end_day r48) 30)
		(= (end_day r49) 26)
		(= (end_day r50) 30)
		(= (end_day r51) 11)
		(= (end_day r52) 27)
		(= (end_day r53) 23)
		(= (end_day r54) 27)
		(= (end_day r55) 29)
		(= (end_day r56) 30)
		(= (end_day r57) 28)
		(= (end_day r58) 27)
		(= (end_day r59) 29)
		(= (end_day r60) 27)
		(= (end_day r61) 29)
		(= (end_day r62) 28)
		(= (end_day r63) 30)
		(= (end_day r64) 15)
		(= (end_day r65) 25)
		(= (end_day r66) 26)
		(= (end_day r67) 24)
		(= (end_day r68) 15)
		(= (end_day r69) 11)
		(= (end_day r70) 10)
		(= (end_day r71) 30)
		(= (end_day r72) 30)
		(= (end_day r73) 30)
		(= (end_day r74) 14)
		(= (end_day r75) 30)
		(= (tamano h0) 3)
		(= (tamano h1) 2)
		(= (tamano h2) 1)
		(= (tamano h3) 4)
		(= (tamano h4) 2)
		(= (tamano h5) 3)
		(= (tamano h6) 1)
		(= (tamano h7) 3)
		(= (tamano h8) 3)
		(= (tamano h9) 2)
		(= (tamano h10) 3)
		(= (tamano h11) 2)
		(= (tamano h12) 3)
		(= (tamano h13) 4)
		(= (tamano h14) 2)
		(= (tamano h15) 4)
		(= (tamano h16) 3)
		(= (tamano h17) 2)
		(= (tamano h18) 4)
		(= (tamano r0) 1)
		(= (tamano r1) 4)
		(= (tamano r2) 2)
		(= (tamano r3) 3)
		(= (tamano r4) 3)
		(= (tamano r5) 4)
		(= (tamano r6) 3)
		(= (tamano r7) 2)
		(= (tamano r8) 2)
		(= (tamano r9) 3)
		(= (tamano r10) 4)
		(= (tamano r11) 4)
		(= (tamano r12) 4)
		(= (tamano r13) 2)
		(= (tamano r14) 3)
		(= (tamano r15) 2)
		(= (tamano r16) 3)
		(= (tamano r17) 4)
		(= (tamano r18) 4)
		(= (tamano r19) 1)
		(= (tamano r20) 4)
		(= (tamano r21) 4)
		(= (tamano r22) 1)
		(= (tamano r23) 1)
		(= (tamano r24) 2)
		(= (tamano r25) 4)
		(= (tamano r26) 3)
		(= (tamano r27) 4)
		(= (tamano r28) 1)
		(= (tamano r29) 4)
		(= (tamano r30) 3)
		(= (tamano r31) 3)
		(= (tamano r32) 2)
		(= (tamano r33) 3)
		(= (tamano r34) 3)
		(= (tamano r35) 1)
		(= (tamano r36) 4)
		(= (tamano r37) 4)
		(= (tamano r38) 2)
		(= (tamano r39) 2)
		(= (tamano r40) 1)
		(= (tamano r41) 2)
		(= (tamano r42) 3)
		(= (tamano r43) 3)
		(= (tamano r44) 3)
		(= (tamano r45) 4)
		(= (tamano r46) 3)
		(= (tamano r47) 3)
		(= (tamano r48) 3)
		(= (tamano r49) 3)
		(= (tamano r50) 4)
		(= (tamano r51) 2)
		(= (tamano r52) 2)
		(= (tamano r53) 1)
		(= (tamano r54) 3)
		(= (tamano r55) 1)
		(= (tamano r56) 2)
		(= (tamano r57) 4)
		(= (tamano r58) 4)
		(= (tamano r59) 1)
		(= (tamano r60) 4)
		(= (tamano r61) 4)
		(= (tamano r62) 3)
		(= (tamano r63) 4)
		(= (tamano r64) 1)
		(= (tamano r65) 1)
		(= (tamano r66) 4)
		(= (tamano r67) 2)
		(= (tamano r68) 3)
		(= (tamano r69) 4)
		(= (tamano r70) 3)
		(= (tamano r71) 2)
		(= (tamano r72) 1)
		(= (tamano r73) 3)
		(= (tamano r74) 2)
		(= (tamano r75) 1)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric maximize (+ (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (habitaciones_unused) 19)) (/ (cantidad_reservas) 76)))
)