(define (domain hotel)
    (:requirements :strips :equality :adl :typing :fluents)
    (:types habitacion - object
            reserva - object)
    (:functions
        (tamano ?x - object)
        (start_day ?r - reserva)
        (end_day ?r - reserva)
    )
    (:predicates
        (visitada ?r - reserva)
    )
    (:action reservar
        :parameters (?h - habitacion ?r - reserva)
        :precondition (and 
            (not (visitada ?r))
            (>= (tamano ?h) (tamano ?r))
            (forall (?r1 - reserva)
                (or
                    (= ?r ?r1)
                    (visitada ?r1)
                    (< (tamano ?h) (tamano ?r1))
                    (< (end_day ?r1) (start_day ?r))
                    (> (start_day ?r1) (end_day ?r))
                )
            )
        )
        :effect (visitada ?r)
    )
)