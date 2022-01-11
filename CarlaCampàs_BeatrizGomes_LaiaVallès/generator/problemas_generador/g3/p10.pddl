(define (problem p10) (:domain hotel)
	(:objects
		h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 - habitacion
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 - reserva
	)
	(:init
		(= (cantidad_reservas) 0)
		(= (xctj_ocupacion) 0)
		(= (start_day r0) 16)
		(= (start_day r1) 11)
		(= (start_day r2) 3)
		(= (start_day r3) 13)
		(= (start_day r4) 6)
		(= (start_day r5) 18)
		(= (start_day r6) 11)
		(= (start_day r7) 22)
		(= (start_day r8) 23)
		(= (start_day r9) 2)
		(= (start_day r10) 24)
		(= (start_day r11) 27)
		(= (start_day r12) 11)
		(= (start_day r13) 17)
		(= (start_day r14) 2)
		(= (start_day r15) 6)
		(= (start_day r16) 20)
		(= (start_day r17) 29)
		(= (start_day r18) 20)
		(= (start_day r19) 6)
		(= (start_day r20) 5)
		(= (start_day r21) 13)
		(= (start_day r22) 17)
		(= (start_day r23) 13)
		(= (start_day r24) 25)
		(= (start_day r25) 1)
		(= (start_day r26) 11)
		(= (start_day r27) 5)
		(= (start_day r28) 8)
		(= (start_day r29) 10)
		(= (start_day r30) 26)
		(= (start_day r31) 10)
		(= (start_day r32) 28)
		(= (start_day r33) 6)
		(= (start_day r34) 8)
		(= (start_day r35) 28)
		(= (start_day r36) 24)
		(= (start_day r37) 5)
		(= (start_day r38) 1)
		(= (start_day r39) 2)
		(= (end_day r0) 28)
		(= (end_day r1) 16)
		(= (end_day r2) 18)
		(= (end_day r3) 15)
		(= (end_day r4) 7)
		(= (end_day r5) 22)
		(= (end_day r6) 26)
		(= (end_day r7) 27)
		(= (end_day r8) 30)
		(= (end_day r9) 30)
		(= (end_day r10) 30)
		(= (end_day r11) 29)
		(= (end_day r12) 13)
		(= (end_day r13) 26)
		(= (end_day r14) 9)
		(= (end_day r15) 7)
		(= (end_day r16) 25)
		(= (end_day r17) 30)
		(= (end_day r18) 28)
		(= (end_day r19) 10)
		(= (end_day r20) 16)
		(= (end_day r21) 18)
		(= (end_day r22) 21)
		(= (end_day r23) 25)
		(= (end_day r24) 27)
		(= (end_day r25) 30)
		(= (end_day r26) 27)
		(= (end_day r27) 29)
		(= (end_day r28) 30)
		(= (end_day r29) 28)
		(= (end_day r30) 27)
		(= (end_day r31) 26)
		(= (end_day r32) 30)
		(= (end_day r33) 23)
		(= (end_day r34) 10)
		(= (end_day r35) 30)
		(= (end_day r36) 26)
		(= (end_day r37) 7)
		(= (end_day r38) 6)
		(= (end_day r39) 26)
		(= (tamano h0) 2)
		(= (tamano h1) 3)
		(= (tamano h2) 2)
		(= (tamano h3) 1)
		(= (tamano h4) 1)
		(= (tamano h5) 1)
		(= (tamano h6) 4)
		(= (tamano h7) 4)
		(= (tamano h8) 3)
		(= (tamano h9) 4)
		(= (tamano r0) 4)
		(= (tamano r1) 3)
		(= (tamano r2) 3)
		(= (tamano r3) 3)
		(= (tamano r4) 4)
		(= (tamano r5) 2)
		(= (tamano r6) 4)
		(= (tamano r7) 4)
		(= (tamano r8) 2)
		(= (tamano r9) 4)
		(= (tamano r10) 1)
		(= (tamano r11) 3)
		(= (tamano r12) 2)
		(= (tamano r13) 4)
		(= (tamano r14) 2)
		(= (tamano r15) 3)
		(= (tamano r16) 2)
		(= (tamano r17) 3)
		(= (tamano r18) 2)
		(= (tamano r19) 3)
		(= (tamano r20) 1)
		(= (tamano r21) 1)
		(= (tamano r22) 4)
		(= (tamano r23) 1)
		(= (tamano r24) 1)
		(= (tamano r25) 4)
		(= (tamano r26) 4)
		(= (tamano r27) 1)
		(= (tamano r28) 4)
		(= (tamano r29) 3)
		(= (tamano r30) 2)
		(= (tamano r31) 3)
		(= (tamano r32) 4)
		(= (tamano r33) 2)
		(= (tamano r34) 4)
		(= (tamano r35) 1)
		(= (tamano r36) 4)
		(= (tamano r37) 4)
		(= (tamano r38) 3)
		(= (tamano r39) 2)
	)
	(:goal (or (forall (?res - reserva) (visitada ?res))))
	(:metric maximize (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (cantidad_reservas) 40)))
)