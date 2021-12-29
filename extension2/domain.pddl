(define (domain hotel)
    (:requirements :strips :equality :adl :typing :fluents)
    (:types habitacion - object
            reserva - object)
    (:functions
        (tamano_habitacion ?habitacion - habitacion)
        (tamano_reserva ?reserva - reserva)
        (start_day ?reserva - reserva)
        (end_day ?reserva - reserva)
        (dias_libres)
        (no_orientacion_deseada)
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
            (decrease (dias_libres) (- (end_day ?reserva) (start_day ?reserva)))
        )
    )

    (:action eliminar
        :parameters (?habitacion - habitacion ?reserva - reserva ?reserva1 - reserva)
        :precondition (and 
            (not (visitada ?reserva))
            (reservada ?reserva1)
            ;(not (= ?reserva ?reserva1)) -- absurd perk no pot ser reservat + no visitat
            (>= (tamano_habitacion ?habitacion) (tamano_reserva ?reserva))
            (>= (tamano_habitacion ?habitacion) (tamano_reserva ?reserva1))
            (or
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
        :effect (and 
            (not (reservada ?reserva1))
            (increase (dias_libres) (- (end_day ?reserva1) (start_day ?reserva1)))
        )
    )
)