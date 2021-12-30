;;; TODO (pretty easy de cambiar)
;; pref_orient_no_servida --> camas_libres --> inicializado a (sum(capacidad_hab)) --> se hara desde el generador, por ahora hard codea
;; cada vez que se asigna una habitacion quitaremos el num de personas de la reserva
;; cada vez que se elimina una habitacion añadiremos el num de personas back
;; en cambiar habitacion si el num del grupo se ajusta mas a la habitacion currently asignada cambiamos

(define (domain hotel)
    (:requirements :strips :equality :adl :typing :fluents)
    (:types habitacion - object
            reserva - object)
    (:functions
        (tamano_habitacion ?h - habitacion)     ; capacidad maxima de una habitacion 1-4
        (tamano_reserva ?r - reserva)           ; cantidad de personas dde la reserva
        (start_day ?r - reserva)               ; dia que desean empezar - FIJO
        (end_day ?r - reserva)                 ; dia que desean acabar - FIJO
        (dias_libres)                         ; dias que el hotel no tiene reservado -> inicializado a (num hab * num dias)
        ;(orientacion_habitacion ?h - habitacion)   ; orientacion: n = 0 / s = 1 / e = 2 / o = 3
        ;(pref_orientacion ?r - reserva)         ; preferencia orientacion: no existe = -1 / n = 0 / s = 1 / e = 2 / o = 3
        ;(pref_orient_no_servida)              ; cantidad de preferencias no servidas -> inicializado a num reservas
        
        ;(camas_libres)                          ; inicializado a (sum(capacidad_hab)) --> se hara desde el generador, por ahora hard codea
        (suma_porcentaje)
        ;(camas_reserva)
        (cantidad_reservas)

    )

    (:predicates
        (visitada ?r - reserva)                         ;si una reserva ha entrado en reservar correctamente (se ha reservado en algun momento)
        (reservada ?r - reserva)                     ;si en este momento la reserva se ha podido efectuar correctamente
        (habitacion_assignada ?h - habitacion ?r - reserva)    ; si la habitacion esta asignada a una reserva
        (habitacion_visitada ?h - habitacion ?r - reserva)        ; si la combinacion de habitacion - reserva ha sido visitada
    )

    (:action reservar
        :parameters (?h - habitacion ?r - reserva)      ; reservamos una reserva en una habitacion
        :precondition (and 
            (not (reservada ?r))                        ; si la habitacion no esta en la lista de reservados
            (not (habitacion_visitada ?h ?r))           ; si la habitacion - reserva no ha sido visitada
            (>= (tamano_habitacion ?h) (tamano_reserva ?r)) ; si el grupo cabe en la habitacion
            (forall (?r1 - reserva)                         ; no hay conflictos de dias para todas las habitaciones
                (or
                    (not (habitacion_assignada ?h ?r1))
                    (< (end_day ?r1) (start_day ?r))
                    (> (start_day ?r1) (end_day ?r))
                )
            )
        )
        :effect (and 
            (visitada ?r)
            (reservada ?r)
            (habitacion_assignada ?h ?r)
            (habitacion_visitada ?h ?r)
            (decrease (dias_libres) (- (end_day ?r) (start_day ?r)))
            ;(decrease (camas_libres) (tamano_reserva ?r))
            (increase (suma_porcentaje) (* (/ (- (tamano_habitacion  ?h) (tamano_reserva ?r)) (tamano_habitacion ?h)) 100))
            (increase (cantidad_reservas) 1)

        )
    )

    (:action eliminar
        :parameters (?h - habitacion ?r - reserva ?r1 - reserva)    ; para dos reservas
        :precondition (and 
            (not (visitada ?r)) ; si la habitacion r no ha sido visitada --> maybe change to not habitacion_assig
            (habitacion_assignada ?h ?r1) ; la habitacion ha sido assignada
            (>= (tamano_habitacion ?h) (tamano_reserva ?r))
            (< (- (tamano_habitacion ?h) (tamano_reserva ?r)) (- (tamano_habitacion ?h) (tamano_reserva ?r1))) ; ?r será candidata a dar conflicto si deja menos camas en ?h desocupadas que la ?r1 ya asignada
            (or ; si hay algun conflicto entre la habitacion r1 (reservada) y r (no reservada) quitamos r1
                (and   
                    (>= (end_day ?r1) (start_day ?r))
                    (<= (end_day ?r1) (end_day ?r))
                )
                (and
                    (>= (start_day ?r1) (start_day ?r))
                    (<= (start_day ?r1) (end_day ?r))
                )
                (and
                    (<= (start_day ?r1) (start_day ?r))
                    (>= (end_day ?r1) (end_day ?r))
                )
                (and
                    (>= (start_day ?r1) (start_day ?r))
                    (<= (end_day ?r1) (end_day ?r))
                )
            )
        )
        :effect (and 
            (not (reservada ?r1))
            (not (habitacion_assignada ?h ?r1))
            (increase (dias_libres) (- (end_day ?r1) (start_day ?r1)))
            ;(decrease (camas_libres) (tamano_reserva ?r)) 
            (decrease (suma_porcentaje) (* (/ (- (tamano_habitacion  ?h) (tamano_reserva ?r)) (tamano_habitacion ?h)) 100))
            (decrease (cantidad_reservas) 1)    
        )
    )

    (:action cambio_habitacion ; en este caso solo nos itneresa cambiar si hay algun "beneficio", solo cambiamos si hay una habitación más ajustada
        :parameters (?h - habitacion ?h1 - habitacion ?r - reserva)
        :precondition (and
            (habitacion_assignada ?h ?r)
            (not (habitacion_visitada ?h1 ?r))
            (>= (tamano_habitacion ?h1) (tamano_reserva ?r))
            (< (tamano_habitacion ?h1) (tamano_habitacion ?h))
            (forall (?r1 - reserva)
                (or
                    (not (habitacion_assignada ?h1 ?r1))
                    (< (end_day ?r1) (start_day ?r))
                    (> (start_day ?r1) (end_day ?r))
                )
            )
        )
        :effect (and
            (not (habitacion_assignada ?h ?r))
            (habitacion_assignada ?h1 ?r)
            (habitacion_visitada ?h1 ?r)
            (decrease (suma_porcentaje) (* (/ (- (tamano_habitacion  ?h) (tamano_reserva ?r)) (tamano_habitacion ?h)) 100))
            (increase (suma_porcentaje) (* (/ (- (tamano_habitacion  ?h1) (tamano_reserva ?r)) (tamano_habitacion ?h1)) 100))
            ;cantidad_reservas no cambia
        )
    )
)