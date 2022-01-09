(define (problem jp1) (:domain hotel)
    (:objects
    	h1 h2 h3 h4 - habitacion
    	r1  r2  r3  r4  r5  r6  r7  r8 r11 - reserva
        ;r11 r22 r33 r44 r55 r66 r77 r88 - reserva
        
    )
    (:init
        (= (cantidad_reservas) 0)
        (= (xctj_ocupacion) 0)

        (= (start_day r1) 1)
        (= (start_day r2) 1)
        (= (start_day r3) 1)
        (= (start_day r4) 1)
        (= (start_day r5) 2)
        (= (start_day r6) 2)
        (= (start_day r7) 2)
        (= (start_day r8) 2)
        (= (start_day r11) 3)
        
         (= ( end_day r1) 1)
        (= ( end_day r2) 1)
        (= ( end_day r3) 1)
        (= ( end_day r4) 1)
        (= ( end_day r5) 2)
        (= ( end_day r6) 2)
        (= ( end_day r7) 2)
        (= ( end_day r8) 2)
        (= ( end_day r11) 3)
      
        (= (tamano h1) 1)
        (= (tamano h2) 2)
        (= (tamano h3) 3)
        (= (tamano h4) 4)

        (= (tamano r1) 3)
        (= (tamano r2) 2)
        (= (tamano r3) 1)
        (= (tamano r4) 4)
        (= (tamano r5) 2)
        (= (tamano r6) 1)
        (= (tamano r7) 1)
        (= (tamano r8) 3)
        (= (tamano r11) 3)
    )

   (:goal 
        (or (forall (?res - reserva) (or (visitada ?res)))))
      (:metric maximize (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (cantidad_reservas) 9)))
   
)
