#!/usr/bin/python

import sys
from random import randrange

# Some constants
MIN_N_ROOMS = 1
MIN_N_RESERVATIONS = 1

DAYS = 30

MIN_ROOM_CAPACITY = 1
MAX_ROOM_CAPACITY = 4

MIN_PREF_ORIENTATION = -1
MIN_ORIENTATION = 0
MAX_ORIENTATION = 4

# Global variables
f = open ("problem.pddl", "w")
diasLibres = 0
sumCamas = 0

def usage():
    print("\n")
    print("Usage: python3 generator.py extension nRooms nReservations\n")
    print("extension: extension to be used [0-4] (0 for basic level)")
    print("nRooms: number of rooms in the hotel [1...]")
    print("nReservations: number of reservations in the hotel [1...]")
    print("\n")
    exit(1)

def writeObjects(nRooms, nReservations):
    f.write("\t(:objects\n")
    f.write("\t\t")

    # Write habitaciones
    for i in range(0, nRooms):
        f.write("h" + str(i) + " ")
    f.write("- habitacion\n")

    f.write("\t\t")

    # Write reservas
    for i in range(0, nReservations):
        f.write("r" + str(i) + " ")
    f.write("- reserva\n")
    f.write("\t)\n")

def writeInit(extension, nRooms, nReservations):
    global diasLibres, sumCamas
    f.write("\t(:init\n")

    # Write dias_libres
    if extension > 0:
        diasLibres = DAYS * nRooms
        f.write("\t\t(= (dias_libres) " + str(diasLibres) + ")\n")
        f.write("\n")

    # Write start_day
    startDayList = []
    for i in range(0, nReservations):
        startDay = randrange(1, DAYS - 1)  # Staying overnight means max day is 29
        startDayList.append(startDay)
        f.write("\t\t(= (start_day r" + str(i) + ") " + str(startDay) + ")\n")
    f.write("\n")

    # Write end_day
    for i in range(0, nReservations):
        endDay = randrange(startDayList[i]+1, DAYS)   # endDay must be larger than startDay
        f.write("\t\t(= (end_day r" + str(i) + ") " + str(endDay) + ")\n")
    f.write("\n")

    # Write tamano_habitacion
    for i in range(0, nRooms):
        tamanoHabitacion = randrange(MIN_ROOM_CAPACITY, MAX_ROOM_CAPACITY)
        sumCamas += tamanoHabitacion
        f.write("\t\t(= (tamano_habitacion h" + str(i) + ") " + str(tamanoHabitacion) + ")\n")
    f.write("\n")

    # Write tamano_reserva
    for i in range(0, nReservations):
        tamanoHabitacion = randrange(MIN_ROOM_CAPACITY, MAX_ROOM_CAPACITY)
        f.write("\t\t(= (tamano_reserva r" + str(i) + ") " + str(tamanoHabitacion) + ")\n")
    f.write("\n")


    # Write pref_orient_no_servida
    if extension == 2:
        f.write("\t\t(= (pref_orient_no_servida) " + str(sumCamas) + ")\n")
        f.write("\n")

        # Write orientacion_habitacion
        for i in range(0, nRooms):
            orientacion = randrange(MIN_ORIENTATION, MAX_ORIENTATION)
            f.write("\t\t(= (orientacion_habitacion h" + str(i) + ") " + str(orientacion) + ")\n")
        f.write("\n")

        # Write pref_orientacion
        for i in range(0, nReservations):
            orientacion = randrange(MIN_PREF_ORIENTATION, MAX_ORIENTATION)
            f.write("\t\t(= (pref_orientacion r" + str(i) + ") " + str(orientacion) + ")\n")

    f.write("\t)\n")
    f.write("\n")

def writeGoal():
    f.write("\t(:goal (or (forall (?res - reserva) (visitada ?res))))\n")

def writeMetric(extension):
    if extension == 0:
        return
    elif extension == 1:
        f.write("\t(:metric minimize (dias_libres))\n")
    elif extension == 2:
        # TODO: figure out last 3
        f.write("\t(:metric minimize (+ (/ (pref_orient_no_servida) " + str(sumCamas) + ") (* (/ (dias_libres) " + str(diasLibres) + ") "+ str(3) + ")))")


def main():
    # Check input
    if len(sys.argv) != 4:
        usage()
    try:
        extension = int(sys.argv[1])
        nRooms = int(sys.argv[2])
        nReservations = int(sys.argv[3])
    except ValueError:
        usage()
    if extension < 0 or extension > 4 or nRooms < MIN_N_ROOMS or nReservations < MIN_N_RESERVATIONS:
        usage()

    # Write file
    f.write("(define (problem generated) (:domain hotel)\n") # Open header
    writeObjects(nRooms, nReservations)
    writeInit(extension, nRooms, nReservations)
    writeGoal()
    writeMetric(extension)
    f.write("\n)") # Close header

    # Done
    print("File generated!")


if __name__ == "__main__":
    main()
