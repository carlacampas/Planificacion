(define (problem jp1) (:domain hotel)
    (:objects
    	h1 h2 h3 h4 - habitacion
    	r1  r2  r3  r4  r5  r6  r7  r8 - reserva
        r11 r22 r33 r44 r55 r66 r77 r88 - reserva
        
    )
    (:init
        (= (cantidad_reservas) 0)
        (= (xctj_ocupacion) 0)

        (= (start_day r1) 1)
        (= (start_day r2) 1)
        (= (start_day r3) 4)
        (= (start_day r4) 4)
        (= (start_day r5) 8)
        (= (start_day r6) 8)
        (= (start_day r7) 12)
        (= (start_day r8) 12)
        
        (= (start_day r11) 1)
        (= (start_day r22) 1)
        (= (start_day r33) 4)
        (= (start_day r44) 4)
        (= (start_day r55) 8)
        (= (start_day r66) 8)
        (= (start_day r77) 12)
        (= (start_day r88) 12)
        
        (= ( end_day r1) 3)
        (= ( end_day r2) 3)
        (= ( end_day r3) 7)
        (= ( end_day r4) 7)
        (= ( end_day r5) 11)
        (= ( end_day r6) 11)
        (= ( end_day r7) 20)
        (= ( end_day r8) 20)
        
        (= ( end_day r11) 3)
        (= ( end_day r22) 3)
        (= ( end_day r33) 7)
        (= ( end_day r44) 7)
        (= ( end_day r55) 11)
        (= ( end_day r66) 11)
        (= ( end_day r77) 20)
        (= ( end_day r88) 20)

        (= (tamano h1) 1)
        (= (tamano h2) 2)
        (= (tamano h3) 3)
        (= (tamano h4) 4)

        (= (tamano r1) 1)
        (= (tamano r2) 2)
        (= (tamano r3) 3)
        (= (tamano r4) 4)
        (= (tamano r5) 2)
        (= (tamano r6) 4)
        (= (tamano r7) 1)
        (= (tamano r8) 4)

        (= (tamano r11) 3)
        (= (tamano r22) 4)
        (= (tamano r33) 1)
        (= (tamano r44) 2)
        (= (tamano r55) 1)
        (= (tamano r66) 3)
        (= (tamano r77) 2)
        (= (tamano r88) 3)    
    )

    (:goal 
        (or (forall (?res - reserva) (or (visitada ?res)))))
    ;(:metric maximize (cantidad_reservas))
    ;(:metric maximize (xctj_ocupacion))
    (:metric maximize (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (cantidad_reservas) 5)))
    ;(:metric maximize (+ (* (/ (xctj_ocupacion) (cantidad_reservas)) 0.5) (* (cantidad_reservas) 0.5)))
    ;(:metric minimize (+ (* (- 0 (/ (xctj_ocupacion) (cantidad_reservas))) 0.5) (* (dias_libres) 0.5)))
    ;(:metric minimize (+ (/ (suma_porcentaje) (cantidad_reservas)) (- (- 5 (reservas_descartadas)) (cantidad_reservas))))
    ;(:metric minimize (+ (/ (suma_porcentaje) (cantidad_reservas)) (* (/ (dias_libres) 120) 4)))
    ;;; dias libres esta en funcion de hab * dias

)
