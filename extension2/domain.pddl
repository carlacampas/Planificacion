(define (domain hotel)
    (:requirements :strips :equality :adl :typing :fluents)
    (:types habitacion - object
            reserva - object)
    (:functions
        (tamano_habitacion ?h - habitacion)
        (orientacion_habitacion ?h - habitacion) ; n = 0 / s = 1 / e = 2 / o = 3

        (tamano_reserva ?r - reserva)
        (start_day ?r - reserva)
        (end_day ?r - reserva)
        (pref_orientacion ?r - reserva) ; n = 0 / s = 1 / e = 2 / o = 3
        
        (dias_libres)
        (pref_orient_no_servida)
    )
    (:predicates
        (visitada ?r - reserva)
        (reservada ?r - reserva)
        (habitacion_assignada ?r - reserva ?h - habitacion)
        (habitacion_visitada ?r - reserva ?h - habitacion)
    )
    (:action reservar
        :parameters (?h - habitacion ?r - reserva)
        :precondition (and 
            (not (visitada ?r))
            (>= (tamano_habitacion ?h) (tamano_reserva ?r))
            (forall (?r1 - reserva)
                (or
                    (= ?r ?r1)
                    (not (reservada ?r1))
                    (not (habitacion_assignada ?r1 ?h))
                    (< (tamano_habitacion ?h) (tamano_reserva ?r1))
                    (< (end_day ?r1) (start_day ?r))
                    (> (start_day ?r1) (end_day ?r))
                )
            )
        )
        :effect (and 
            (visitada ?r)
            (reservada ?r)
            (habitacion_assignada ?r ?h)
            (habitacion_visitada ?r ?h)
            (decrease (dias_libres) (- (end_day ?r) (start_day ?r)))
            (when (or (= (pref_orientacion ?r) -1) (= (pref_orientacion ?r) (orientacion_habitacion ?h)))
                (decrease (pref_orient_no_servida) 1)
            )
        )
    )

    (:action eliminar
        :parameters (?h - habitacion ?r - reserva ?r1 - reserva)
        :precondition (and 
            (not (visitada ?r))
            (habitacion_assignada ?r1 ?h)
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
            (increase (dias_libres) (- (end_day ?r1) (start_day ?r1)))
            (not (habitacion_assignada ?r1 ?h))
            (when (or (= (pref_orientacion ?r1) -1) (= (pref_orientacion ?r1) (orientacion_habitacion ?h)))
                (increase (pref_orient_no_servida) 1)
            )
        )
    )

    (:action cambio_habitacion 
        :parameters (?h - habitacion ?h1 - habitacion ?r - reserva)
        :precondition (and
            (habitacion_assignada ?r ?h)
            (not (habitacion_visitada ?r ?h1))
            (>= (tamano_habitacion ?h) (tamano_reserva ?r))
            (>= (tamano_habitacion ?h1) (tamano_reserva ?r))
            (forall (?r1 - reserva)
                (or
                    (= ?r ?r1)
                    (not (reservada ?r1))
                    (not (habitacion_assignada ?r1 ?h1))
                    (< (tamano_habitacion ?h) (tamano_reserva ?r1))
                    (< (end_day ?r1) (start_day ?r))
                    (> (start_day ?r1) (end_day ?r))
                )
            )
        )
        :effect (and
            (not (habitacion_assignada ?r ?h))
            (habitacion_assignada ?r ?h1)
            (habitacion_visitada ?r ?h1)
            (when (and 
                    (not (= (pref_orientacion ?r) -1)) 
                    (not (= (pref_orientacion ?r) (orientacion_habitacion ?h)))
                    (= (pref_orientacion ?r) (orientacion_habitacion ?h1))
                )
                (increase (pref_orient_no_servida) 1)
            )
        )
    )
)