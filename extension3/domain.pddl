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
        (tamano ?x - object)
        (start_day ?r - reserva)                ; dia que desean empezar - FIJO
        (end_day ?r - reserva)                  ; dia que desean acabar - FIJO
        
        (cantidad_reservas)
        (xctj_ocupacion)
    )

    (:predicates
        (visitada ?r - reserva)                                 ; si una reserva ha entrado en reservar correctamente (se ha reservado en algun momento)
        (reservada ?r - reserva)                                ; si en este momento la reserva se ha podido efectuar correctamente
        (habitacion_assignada ?h - habitacion ?r - reserva)     ; si la habitacion esta asignada a una reserva
        (habitacion_visitada ?h - habitacion ?r - reserva)      ; si la combinacion de habitacion - reserva ha sido visitada
    )

    (:action reservar
        :parameters (?h - habitacion ?r - reserva)          ; reservamos una reserva en una habitacion
        :precondition (and 
            (not (visitada ?r))
            (not (reservada ?r))                            ; si la habitacion no esta en la lista de reservados
            (not (habitacion_visitada ?h ?r))               ; si la habitacion - reserva no ha sido visitada
            (>= (tamano ?h) (tamano ?r)) ; si el grupo cabe en la habitacion
            
            (forall (?h1 - habitacion)
                (or
                    (< (tamano ?h1) (tamano ?r))
                    (<= (- (tamano ?h) (tamano ?r)) (- (tamano ?h1) (tamano ?r)))
                )
            )

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
            (increase (xctj_ocupacion) (* (/ (tamano ?r) (tamano ?h)) 100))
            (increase (cantidad_reservas) 1)
        )
    )

    (:action cambio_reserva
        :parameters (?h - habitacion ?r - reserva ?r1 - reserva)
        :precondition (and 
            (not (visitada ?r1))
            (habitacion_assignada ?h ?r)
            (not (habitacion_visitada ?h ?r1))
            (>= (tamano ?h) (tamano ?r1))
            (< (- (tamano ?h) (tamano ?r1)) (- (tamano ?h) (tamano ?r))) ; ?r será candidata a dar conflicto si deja menos camas en ?h desocupadas que la ?r1 ya asignada
            (or ; si hay algun conflicto entre la habitacion r1 (reservada) y r (no reservada) quitamos r1
                (and   
                    (>= (end_day ?r) (start_day ?r1))
                    (<= (end_day ?r) (end_day ?r1))
                )
                (and
                    (>= (start_day ?r) (start_day ?r1))
                    (<= (start_day ?r) (end_day ?r1))
                )
                (and
                    (<= (start_day ?r) (start_day ?r1))
                    (>= (end_day ?r) (end_day ?r1))
                )
                (and
                    (>= (start_day ?r) (start_day ?r1))
                    (<= (end_day ?r) (end_day ?r1))
                )
            )
        )
        :effect (and
            (visitada ?r1)
            (not (reservada ?r))
            (reservada ?r1)
            (not (habitacion_assignada ?h ?r))
            (habitacion_assignada ?h ?r1)
            (decrease (xctj_ocupacion) (* (/ (tamano ?r) (tamano ?h)) 100))
            (increase (xctj_ocupacion) (* (/ (tamano ?r1) (tamano ?h)) 100)) 
            
        )
    )
    
    (:action cambio_habitacion ; en este caso solo nos itneresa cambiar si hay algun "beneficio", solo cambiamos si hay una habitación más ajustada
        :parameters (?h - habitacion ?h1 - habitacion ?r - reserva)
        :precondition (and
            (habitacion_assignada ?h ?r)
            (not (habitacion_visitada ?h1 ?r))
            (>= (tamano ?h1) (tamano ?r))
            (< (- (tamano ?h1) (tamano ?r)) (- (tamano ?h) (tamano ?r))) ; ?r será candidata a dar conflicto si deja menos camas en ?h desocupadas que la ?r1 ya asignada
            ;(< (tamano ?h1) (tamano ?h))
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
            (decrease (xctj_ocupacion) (* (/ (tamano ?r) (tamano ?h)) 100))
            (increase (xctj_ocupacion) (* (/ (tamano ?r) (tamano ?h1)) 100))
            ;cantidad_reservas no cambia
        )
    )
)


 