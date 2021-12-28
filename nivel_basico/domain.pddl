(define (domain hotel)
    (:requirements :strips :equality :adl :typing)
    (:types habitacion - item
            dia - item
            reserva - item)
    (:functions
        (tamano_habitacion ?habitacion - habitacion)
        (tamano_reserva ?reserva - reserva)
    )
    (:predicates
        (libre ?habitacion - habitacion ?dia - dia)
        (reservado ?reserva - reserva ?dia - dia)
        (visitada ?reserva - reserva)
    )
    (:action reservar
        :parameters (?habitacion - habitacion ?reserva - reserva)
        :precondition (and 
            (not (visitada ?reserva))
            (>= (tamano_habitacion ?habitacion) (tamano_reserva ?reserva))
            (forall (?dia - dia)
                (or
                    (libre ?habitacion ?dia)
                    (not (reservado ?reserva ?dia))
                )
            )
        )
        :effect (and
            (forall (?dia - dia)
                (when (reservado ?reserva ?dia) (not (libre ?habitacion ?dia)))
            )
            (visitada ?reserva)
        )
    )
)