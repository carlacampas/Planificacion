(define (domain hotel)
    (:requirements :strips :equality :adl :typing :fluents)
    (:types habitacion - object
            reserva - object)
    (:functions
        (tamano ?x - object)     ; capacidad maxima de una habitacion 1-4 
        (start_day ?r - reserva)               ; dia que desean empezar - FIJO
        (end_day ?r - reserva)                 ; dia que desean acabar - FIJO
        (reservas_libres)                         ; dias que el hotel no tiene reservado -> inicializado a (num hab * num dias)
        (orientacion ?x - object)         ; preferencia orientacion: no existe = -1 / n = 0 / s = 1 / e = 2 / o = 3
        (pref_orient_no_servida)              ; cantidad de preferencias no servidas -> inicializado a num reservas
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
            (>= (tamano ?h) (tamano ?r)) ; si el grupo cabe en la habitacion
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
            (decrease (reservas_libres) 1)
            (when (or (= (orientacion ?r) -1) (= (orientacion ?r) (orientacion ?h)))
                (decrease (pref_orient_no_servida) 1)
            )
        )
    )

    (:action eliminar
        :parameters (?h - habitacion ?r - reserva ?r1 - reserva)    ; para dos reservas
        :precondition (and 
            (not (habitacion_visitada ?h ?r)) ; si la habitacion r no ha sido visitada --> maybe change to not habitacion_assig
            (habitacion_assignada ?h ?r1) ; la habitacion ha sido assignada
            (>= (tamano ?h) (tamano ?r))
        )
        :effect (and 
            (not (reservada ?r1))
            (not (habitacion_assignada ?h ?r1))
            (increase (reservas_libres) 1)
            (when (or (= (orientacion ?r1) -1) (= (orientacion ?r1) (orientacion ?h)))
                (increase (pref_orient_no_servida) 1) ;incrementamos si perdemos preferencia 
            )
        )
    )

    (:action cambio_habitacion ; en este caso solo nos itneresa cambiar si hay algun "beneficio", solo cambiamos si hay un incremento en orientacion
        :parameters (?h - habitacion ?h1 - habitacion ?r - reserva)
        :precondition (and
            (habitacion_assignada ?h ?r)
            (not (habitacion_visitada ?h1 ?r))
            (>= (tamano ?h1) (tamano ?r))
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
            (decrease (pref_orient_no_servida) 1)
        )
    )
)