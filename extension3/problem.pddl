(define (problem extension3) (:domain hotel)
    (:objects
    	;h1 h2 h3 h4 h5 h6 h7 h8 - habitacion
    	;r1  r2  r3  r4 r5 r6 r7 r8 r9 - reserva
        ;r11 r22 r33 r44 r55 r66 r77 r88 r99 - reserva
        
        h1 h2 h3 h4 - habitacion
        r1  r2  r3  r4 - reserva
        r11 r22 r33 r44 - reserva

        ;h1 - habitacion
        ;r1 r2 r3 r4 - reserva

        ;h1 h2 - habitacion
        ;r1 - reserva
    )
    (:init
        ;(= (dias_libres) 30)           ;num dias totales (30) * num habitaciones
        ;(= (suma_porcentaje) 0)
        (= (cantidad_reservas) 0)
        (= (reservas_descartadas) 0)
        ;(= (camas_libres) 0)
        (= (xctj_ocupacion) 0)
        
        ;(= (camas_reserva) 0)
        ;(= (camas_libres) 14) ;sum(tamano_habit)

        (= (start_day r1) 1)
        (= (start_day r2) 1)
        (= (start_day r3) 1)
        (= (start_day r4) 1)
        ;(= (start_day r5) 1)
        ;(= (start_day r6) 1)
        ;(= (start_day r7) 1)
        ;(= (start_day r8) 1)
        
        (= (start_day r11) 16)
        (= (start_day r22) 16)
        (= (start_day r33) 16)
        (= (start_day r44) 16)
        ;(= (start_day r55) 16)
        ;(= (start_day r66) 16)
        ;(= (start_day r77) 16)
        ;(= (start_day r88) 16)
        
        (= ( end_day r1) 15)
        (= ( end_day r2) 15)
        (= ( end_day r3) 15)
        (= ( end_day r4) 15)
        ;(= ( end_day r5) 15)
        ;(= ( end_day r6) 15)
        ;(= ( end_day r7) 15)
        ;(= ( end_day r8) 15)
        
        (= ( end_day r11) 30)
        (= ( end_day r22) 30)
        (= ( end_day r33) 30)
        (= ( end_day r44) 30)
        ;(= ( end_day r55) 30)
        ;(= ( end_day r66) 30)
        ;(= ( end_day r77) 30)
        ;(= ( end_day r88) 30)

        (= (tamano_habitacion h1) 1)
        (= (tamano_habitacion h2) 2)
        (= (tamano_habitacion h3) 3)
        (= (tamano_habitacion h4) 4)
        ;(= (tamano_habitacion h5) 1)
        ;(= (tamano_habitacion h6) 2)
        ;(= (tamano_habitacion h7) 3)
        ;(= (tamano_habitacion h8) 4)

        (= (tamano_reserva r1) 1)
        (= (tamano_reserva r2) 2)
        (= (tamano_reserva r3) 3)
        (= (tamano_reserva r4) 4)
        ;(= (tamano_reserva r5) 1)
        ;(= (tamano_reserva r6) 2)
        ;(= (tamano_reserva r7) 3)
        ;(= (tamano_reserva r8) 4)

        (= (tamano_reserva r11) 1)
        (= (tamano_reserva r22) 2)
        (= (tamano_reserva r33) 3)
        (= (tamano_reserva r44) 4)
        ;(= (tamano_reserva r55) 1)
        ;(= (tamano_reserva r66) 2)
        ;(= (tamano_reserva r77) 3)
        ;(= (tamano_reserva r88) 4)    
    )

    (:goal 
        (or (forall (?res - reserva) 
                (or 
                    (visitada ?res) 
                    (descartada ?res)
                )
            )
    
        )
    )
    ;(:metric maximize (cantidad_reservas))
    ;(:metric maximize (xctj_ocupacion))
    (:metric maximize (+ (/ (xctj_ocupacion) (cantidad_reservas)) (/ (cantidad_reservas) (- 8 (reservas_descartadas)))))
    ;(:metric maximize (+ (* (/ (xctj_ocupacion) (cantidad_reservas)) 0.5) (* (cantidad_reservas) 0.5)))
    ;(:metric minimize (+ (* (- 0 (/ (xctj_ocupacion) (cantidad_reservas))) 0.5) (* (dias_libres) 0.5)))
    ;(:metric minimize (+ (/ (suma_porcentaje) (cantidad_reservas)) (- (- 5 (reservas_descartadas)) (cantidad_reservas))))
    ;(:metric minimize (+ (/ (suma_porcentaje) (cantidad_reservas)) (* (/ (dias_libres) 120) 4)))
    ;;; dias libres esta en funcion de hab * dias

)
