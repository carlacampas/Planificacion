(define (domain hotel)
    (:requirements :strips :equality :adl :typing :fluents)
    (:types habitacion - object
            reserva - object)
    (:functions
        (tamano_habitacion ?habitacion - habitacion)
        (tamano_reserva ?reserva - reserva)
        (start_day ?reserva - reserva)
        (end_day ?reserva - reserva)
        (reservas)
    )
    (:predicates
        (visitada ?reserva - reserva)
        (reservada ?reserva - reserva)
    )
    (:action reservar
        :parameters (?habitacion - habitacion ?reserva - reserva)
        :precondition (and 
            (not (visitada ?reserva))
            (>= (tamano_habitacion ?habitacion) (tamano_reserva ?reserva))
            (forall (?reserva1 - reserva)
                (or
                    (= ?reserva ?reserva1)
                    (not (reservada ?reserva1))
                    (< (tamano_habitacion ?habitacion) (tamano_reserva ?reserva1))
                    (< (end_day ?reserva1) (start_day ?reserva))
                    (> (start_day ?reserva1) (end_day ?reserva))
                )
            )
        )
        :effect (and 
            (visitada ?reserva)
            (reservada ?reserva)
        )
    )

    (:action eliminar
        :parameters (?habitacion - habitacion ?reserva - reserva ?reserva1 - reserva)
        :precondition (and 
            (not (visitada ?reserva))
            (>= (tamano_habitacion ?habitacion) (tamano_reserva ?reserva))
            (or
                (= ?reserva ?reserva1)
                (not (reservada ?reserva1))
                (< (tamano_habitacion ?habitacion) (tamano_reserva ?reserva1))
                (and
                    (>= (end_day ?reserva1) (start_day ?reserva))
                    (<= (end_day ?reserva1) (end_day ?reserva))
                )
                (and
                    (>= (start_day ?reserva1) (start_day ?reserva))
                    (<= (start_day ?reserva1) (end_day ?reserva))
                )
                (and
                    (<= (start_day ?reserva1) (start_day ?reserva))
                    (>= (end_day ?reserva1) (end_day ?reserva))
                )
            )
        )
        :effect (not (reservada ?reserva))
    )
)