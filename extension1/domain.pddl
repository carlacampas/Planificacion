(define (domain hotel)
    (:requirements :strips :equality :adl :typing :fluents)
    (:types habitacion - object
            reserva - object)
    (:functions
        (tamano ?x - object)     ; capacidad maxima de una habitacion 1-4
        (start_day ?r - reserva)               ; dia que desean empezar - FIJO
        (end_day ?r - reserva)                 ; dia que desean acabar - FIJO
        (reservas_libres)                     
    )

    (:predicates
        (visitada ?r - reserva)
        (reservada ?r - reserva)                             ;si en este momento la reserva se ha podido efectuar correctamente           
        (habitacion_assignada ?h - habitacion ?r - reserva)  ;si la habitacion esta asignada a una reserva
        (habitacion_visitada ?h - habitacion ?r - reserva)      ; si la combinacion de habitacion - reserva ha sido visitada
    )

    (:action reservar
        :parameters (?h - habitacion ?r - reserva)
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
        )
    )
)