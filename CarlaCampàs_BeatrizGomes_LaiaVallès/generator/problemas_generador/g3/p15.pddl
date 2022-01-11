(define (problem p15) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 - reserva
	)
	(:init
		(= (cantidad_reservas) 0)
		(= (xctj_ocupacion) 0)
		(= (start_day r0) 26)
		(= (start_day r1) 21)
		(= (start_day r2) 2)
		(= (start_day r3) 4)
		(= (start_day r4) 10)
		(= (start_day r5) 20)
		(= (start_day r6) 21)
		(= (start_day r7) 26)
		(= (start_day r8) 24)
		(= (start_day r9) 22)
		(= (start_day r10) 10)
		(= (start_day r11) 15)
		(= (start_day r12) 29)
		(= (start_day r13) 18)
		(= (start_day r14) 25)
		(= (start_day r15) 20)
		(= (start_day r16) 7)
		(= (start_day r17) 13)
		(= (start_day r18) 26)
		(= (start_day r19) 16)
		(= (start_day r20) 1)
		(= (start_day r21) 12)
		(= (start_day r22) 5)
		(= (start_day r23) 27)
		(= (start_day r24) 6)
		(= (start_day r25) 2)
		(= (start_day r26) 23)
		(= (start_day r27) 17)
		(= (start_day r28) 3)
		(= (start_day r29) 16)
		(= (start_day r30) 15)
		(= (start_day r31) 13)
		(= (start_day r32) 15)
		(= (start_day r33) 15)
		(= (start_day r34) 19)
		(= (start_day r35) 8)
		(= (start_day r36) 13)
		(= (start_day r37) 19)
		(= (start_day r38) 11)
		(= (start_day r39) 6)
		(= (start_day r40) 17)
		(= (start_day r41) 3)
		(= (start_day r42) 9)
		(= (start_day r43) 22)
		(= (start_day r44) 7)
		(= (start_day r45) 9)
		(= (start_day r46) 16)
		(= (start_day r47) 22)
		(= (start_day r48) 17)
		(= (start_day r49) 18)
		(= (start_day r50) 1)
		(= (start_day r51) 3)
		(= (start_day r52) 29)
		(= (start_day r53) 11)
		(= (start_day r54) 12)
		(= (start_day r55) 20)
		(= (start_day r56) 24)
		(= (start_day r57) 2)
		(= (start_day r58) 10)
		(= (start_day r59) 21)
		(= (end_day r0) 29)
		(= (end_day r1) 28)
		(= (end_day r2) 21)
		(= (end_day r3) 15)
		(= (end_day r4) 17)
		(= (end_day r5) 26)
		(= (end_day r6) 22)
		(= (end_day r7) 30)
		(= (end_day r8) 25)
		(= (end_day r9) 29)
		(= (end_day r10) 18)
		(= (end_day r11) 22)
		(= (end_day r12) 30)
		(= (end_day r13) 20)
		(= (end_day r14) 26)
		(= (end_day r15) 25)
		(= (end_day r16) 19)
		(= (end_day r17) 26)
		(= (end_day r18) 30)
		(= (end_day r19) 17)
		(= (end_day r20) 6)
		(= (end_day r21) 22)
		(= (end_day r22) 7)
		(= (end_day r23) 30)
		(= (end_day r24) 22)
		(= (end_day r25) 14)
		(= (end_day r26) 27)
		(= (end_day r27) 30)
		(= (end_day r28) 13)
		(= (end_day r29) 27)
		(= (end_day r30) 26)
		(= (end_day r31) 23)
		(= (end_day r32) 19)
		(= (end_day r33) 29)
		(= (end_day r34) 26)
		(= (end_day r35) 19)
		(= (end_day r36) 24)
		(= (end_day r37) 26)
		(= (end_day r38) 24)
		(= (end_day r39) 8)
		(= (end_day r40) 30)
		(= (end_day r41) 13)
		(= (end_day r42) 16)
		(= (end_day r43) 26)
		(= (end_day r44) 28)
		(= (end_day r45) 10)
		(= (end_day r46) 21)
		(= (end_day r47) 28)
		(= (end_day r48) 25)
		(= (end_day r49) 27)
		(= (end_day r50) 19)
		(= (end_day r51) 29)
		(= (end_day r52) 30)
		(= (end_day r53) 20)
		(= (end_day r54) 15)
		(= (end_day r55) 23)
		(= (end_day r56) 29)
		(= (end_day r57) 29)
		(= (end_day r58) 17)
		(= (end_day r59) 26)
		(= (tamano h0) 2)
		(= (tamano h1) 4)
		(= (tamano h2) 2)
		(= (tamano h3) 4)
		(= (tamano h4) 2)
		(= (tamano h5) 1)
		(= (tamano h6) 3)
		(= (tamano h7) 3)
		(= (tamano h8) 3)
		(= (tamano h9) 2)
		(= (tamano h10) 2)
		(= (tamano h11) 4)
		(= (tamano h12) 1)
		(= (tamano h13) 3)
		(= (tamano h14) 2)
		(= (tamano r0) 2)
		(= (tamano r1) 4)
		(= (tamano r2) 4)
		(= (tamano r3) 1)
		(= (tamano r4) 1)
		(= (tamano r5) 3)
		(= (tamano r6) 2)
		(= (tamano r7) 2)
		(= (tamano r8) 1)
		(= (tamano r9) 1)
		(= (tamano r10) 3)
		(= (tamano r11) 3)
		(= (tamano r12) 1)
		(= (tamano r13) 1)
		(= (tamano r14) 3)
		(= (tamano r15) 4)
		(= (tamano r16) 3)
		(= (tamano r17) 1)
		(= (tamano r18) 1)
		(= (tamano r19) 3)
		(= (tamano r20) 2)
		(= (tamano r21) 4)
		(= (tamano r22) 1)
		(= (tamano r23) 4)
		(= (tamano r24) 3)
		(= (tamano r25) 3)
		(= (tamano r26) 2)
		(= (tamano r27) 4)
		(= (tamano r28) 4)
		(= (tamano r29) 4)
		(= (tamano r30) 4)
		(= (tamano r31) 4)
		(= (tamano r32) 1)
		(= (tamano r33) 1)
		(= (tamano r34) 2)
		(= (tamano r35) 3)
		(= (tamano r36) 4)
		(= (tamano r37) 2)
		(= (tamano r38) 4)
		(= (tamano r39) 4)
		(= (tamano r40) 3)
		(= (tamano r41) 2)
		(= (tamano r42) 1)
		(= (tamano r43) 2)
		(= (tamano r44) 2)
		(= (tamano r45) 3)
		(= (tamano r46) 1)
		(= (tamano r47) 1)
		(= (tamano r48) 4)
		(= (tamano r49) 2)
		(= (tamano r50) 1)
		(= (tamano r51) 4)
		(= (tamano r52) 4)
		(= (tamano r53) 4)
		(= (tamano r54) 4)
		(= (tamano r55) 1)
		(= (tamano r56) 3)
		(= (tamano r57) 4)
		(= (tamano r58) 1)
		(= (tamano r59) 1)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric maximize (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (cantidad_reservas) 60)))
)