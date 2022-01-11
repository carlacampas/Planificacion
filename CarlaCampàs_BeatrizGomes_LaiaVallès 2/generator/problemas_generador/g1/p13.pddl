(define (problem p13) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 - reserva
	)
	(:init
		(= (reservas_libres) 52)
		(= (start_day r0) 2)
		(= (start_day r1) 27)
		(= (start_day r2) 25)
		(= (start_day r3) 4)
		(= (start_day r4) 17)
		(= (start_day r5) 5)
		(= (start_day r6) 4)
		(= (start_day r7) 24)
		(= (start_day r8) 5)
		(= (start_day r9) 27)
		(= (start_day r10) 28)
		(= (start_day r11) 29)
		(= (start_day r12) 13)
		(= (start_day r13) 19)
		(= (start_day r14) 12)
		(= (start_day r15) 12)
		(= (start_day r16) 7)
		(= (start_day r17) 7)
		(= (start_day r18) 16)
		(= (start_day r19) 16)
		(= (start_day r20) 1)
		(= (start_day r21) 15)
		(= (start_day r22) 11)
		(= (start_day r23) 18)
		(= (start_day r24) 14)
		(= (start_day r25) 7)
		(= (start_day r26) 16)
		(= (start_day r27) 17)
		(= (start_day r28) 21)
		(= (start_day r29) 19)
		(= (start_day r30) 1)
		(= (start_day r31) 3)
		(= (start_day r32) 22)
		(= (start_day r33) 28)
		(= (start_day r34) 25)
		(= (start_day r35) 16)
		(= (start_day r36) 15)
		(= (start_day r37) 16)
		(= (start_day r38) 20)
		(= (start_day r39) 2)
		(= (start_day r40) 16)
		(= (start_day r41) 28)
		(= (start_day r42) 9)
		(= (start_day r43) 11)
		(= (start_day r44) 21)
		(= (start_day r45) 21)
		(= (start_day r46) 14)
		(= (start_day r47) 25)
		(= (start_day r48) 13)
		(= (start_day r49) 8)
		(= (start_day r50) 7)
		(= (start_day r51) 14)
		(= (end_day r0) 21)
		(= (end_day r1) 28)
		(= (end_day r2) 26)
		(= (end_day r3) 22)
		(= (end_day r4) 21)
		(= (end_day r5) 14)
		(= (end_day r6) 25)
		(= (end_day r7) 28)
		(= (end_day r8) 18)
		(= (end_day r9) 30)
		(= (end_day r10) 29)
		(= (end_day r11) 30)
		(= (end_day r12) 26)
		(= (end_day r13) 22)
		(= (end_day r14) 29)
		(= (end_day r15) 25)
		(= (end_day r16) 25)
		(= (end_day r17) 14)
		(= (end_day r18) 22)
		(= (end_day r19) 26)
		(= (end_day r20) 25)
		(= (end_day r21) 18)
		(= (end_day r22) 21)
		(= (end_day r23) 23)
		(= (end_day r24) 18)
		(= (end_day r25) 25)
		(= (end_day r26) 19)
		(= (end_day r27) 22)
		(= (end_day r28) 26)
		(= (end_day r29) 23)
		(= (end_day r30) 7)
		(= (end_day r31) 21)
		(= (end_day r32) 24)
		(= (end_day r33) 29)
		(= (end_day r34) 28)
		(= (end_day r35) 28)
		(= (end_day r36) 29)
		(= (end_day r37) 18)
		(= (end_day r38) 22)
		(= (end_day r39) 15)
		(= (end_day r40) 27)
		(= (end_day r41) 29)
		(= (end_day r42) 18)
		(= (end_day r43) 12)
		(= (end_day r44) 23)
		(= (end_day r45) 25)
		(= (end_day r46) 18)
		(= (end_day r47) 29)
		(= (end_day r48) 23)
		(= (end_day r49) 20)
		(= (end_day r50) 14)
		(= (end_day r51) 16)
		(= (tamano h0) 2)
		(= (tamano h1) 1)
		(= (tamano h2) 1)
		(= (tamano h3) 1)
		(= (tamano h4) 4)
		(= (tamano h5) 1)
		(= (tamano h6) 2)
		(= (tamano h7) 2)
		(= (tamano h8) 3)
		(= (tamano h9) 1)
		(= (tamano h10) 4)
		(= (tamano h11) 3)
		(= (tamano h12) 3)
		(= (tamano r0) 4)
		(= (tamano r1) 1)
		(= (tamano r2) 3)
		(= (tamano r3) 1)
		(= (tamano r4) 1)
		(= (tamano r5) 4)
		(= (tamano r6) 3)
		(= (tamano r7) 2)
		(= (tamano r8) 3)
		(= (tamano r9) 1)
		(= (tamano r10) 4)
		(= (tamano r11) 2)
		(= (tamano r12) 1)
		(= (tamano r13) 3)
		(= (tamano r14) 1)
		(= (tamano r15) 4)
		(= (tamano r16) 1)
		(= (tamano r17) 2)
		(= (tamano r18) 1)
		(= (tamano r19) 1)
		(= (tamano r20) 3)
		(= (tamano r21) 3)
		(= (tamano r22) 1)
		(= (tamano r23) 3)
		(= (tamano r24) 2)
		(= (tamano r25) 3)
		(= (tamano r26) 4)
		(= (tamano r27) 1)
		(= (tamano r28) 3)
		(= (tamano r29) 3)
		(= (tamano r30) 1)
		(= (tamano r31) 2)
		(= (tamano r32) 3)
		(= (tamano r33) 4)
		(= (tamano r34) 3)
		(= (tamano r35) 3)
		(= (tamano r36) 4)
		(= (tamano r37) 1)
		(= (tamano r38) 3)
		(= (tamano r39) 3)
		(= (tamano r40) 4)
		(= (tamano r41) 3)
		(= (tamano r42) 3)
		(= (tamano r43) 4)
		(= (tamano r44) 1)
		(= (tamano r45) 2)
		(= (tamano r46) 3)
		(= (tamano r47) 4)
		(= (tamano r48) 4)
		(= (tamano r49) 4)
		(= (tamano r50) 1)
		(= (tamano r51) 4)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric minimize (reservas_libres))
)