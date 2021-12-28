(define (domain hotel)
    (:requirements :strips :equality :adl :typing)
    (:types habitacion - object
            dia - object
            reserva - object)
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
        )
        :effect (and
            (forall (?dia - dia)
                (when 
                    (forall (?dia - dia)
                    (or
                        (libre ?habitacion ?dia)
                        (not (reservado ?reserva ?dia))
                    )
                )
                
                (not (libre ?habitacion ?dia)))
            )
            (visitada ?reserva)
        )
    )
)