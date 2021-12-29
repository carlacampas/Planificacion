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
        (orientacion_habitacion ?h - habitacion) ; no existe = -1 / n = 0 / s = 1 / e = 2 / o = 3
        (pref_orientacion ?r - reserva) ; no existe = -1 / n = 0 / s = 1 / e = 2 / o = 3
        (pref_orient_no_servida)
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
            (when (or (= (pref_orientacion ?r) -1) (= (pref_orientacion ?r) (orientacion_habitacion ?h)))
                (decrease (pref_orient_no_servida) 1)
            )
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
            (when (or (= (pref_orientacion ?r1) -1) (= (pref_orientacion ?r1) (orientacion_habitacion ?h)))
                (increase (pref_orient_no_servida) 1)
            )
        )
    )

    (:action cambio_habitacion 
        :parameters (?h - habitacion ?h1 - habitacion ?r - reserva)
        :precondition (and
            (habitacion_assignada ?h ?r)
            (not (habitacion_visitada ?h1 ?r))
            (>= (tamano_habitacion ?h1) (tamano_reserva ?r))
            (forall (?r1 - reserva)
                (or
                    (not (habitacion_assignada ?h1 ?r1))
                    (< (end_day ?r1) (start_day ?r))
                    (> (start_day ?r1) (end_day ?r))
                )
            )
            (not (= (pref_orientacion ?r) -1)) 
            (not (= (pref_orientacion ?r) (orientacion_habitacion ?h)))
            (= (pref_orientacion ?r) (orientacion_habitacion ?h1))
        )
        :effect (and
            (not (habitacion_assignada ?h ?r))
            (habitacion_assignada ?h1 ?r)
            (habitacion_visitada ?h1 ?r)
            (decrease (pref_orient_no_servida) 1)
        )
    )
)