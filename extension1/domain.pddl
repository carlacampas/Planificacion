(define (domain hotel)
    (:requirements :strips :equality :adl :typing :fluents)
    (:types habitacion - object
            reserva - object)
    (:functions
        (tamano_habitacion ?h - habitacion)
        (tamano_reserva ?r - reserva)
        (start_day ?r - reserva)
        (end_day ?r - reserva)
        (dias_libres)
    )

    (:predicates
        (visitada ?r - reserva)
        (reservada ?r - reserva)
        (habitacion_assignada ?h - habitacion ?r - reserva)
        (habitacion_visitada ?h - habitacion ?r - reserva)
    )

    (:action reservar
        :parameters (?h - habitacion ?r - reserva)
        :precondition (and 
            (and 
                (not (reservada ?r))
                (not (habitacion_visitada ?h ?r))
            )
            (>= (tamano_habitacion ?h) (tamano_reserva ?r))
            (forall (?r1 - reserva)
                (or
                    (not (habitacion_assignada ?h ?r1))
                    (or
                        (< (end_day ?r1) (start_day ?r))
                        (> (start_day ?r1) (end_day ?r))
                    )
                )
            )
        )
        :effect (and 
            (visitada ?r)
            (reservada ?r)
            (habitacion_assignada ?h ?r)
            (habitacion_visitada ?h ?r)
            (decrease (dias_libres) (- (end_day ?r) (start_day ?r)))
        )
    )

    (:action eliminar
        :parameters (?h - habitacion ?r - reserva ?r1 - reserva)
        :precondition (and 
            (not (visitada ?r))
            (reservada ?r1)
            (habitacion_assignada ?h ?r1)
            ;(not (= ?reserva ?reserva1)) -- absurd perk no pot ser reservat + no visitat
            (>= (tamano_habitacion ?h) (tamano_reserva ?r))
            (>= (tamano_habitacion ?h) (tamano_reserva ?r1))
            (or
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
            )
        )
        :effect (and 
            (not (reservada ?r1))
            (not (habitacion_assignada ?h ?r1))
            (increase (dias_libres) (- (end_day ?r1) (start_day ?r1)))
        )
    )
)