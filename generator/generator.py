#!/usr/bin/python

import sys
from random import randrange


f = open ("problem.pddl", "w")

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
    f.write("\t(:init\n")
    if extension > 0:
        # Write dias_libres
        diasLibres = 30 * nRooms
        f.write("\t\t(= (dias_libres) " + str(diasLibres) + ")\n")
    # TODO: if extension > 1: ...
    f.write("\n")

    # Write random start_day
    startDayList = []
    for i in range(0, nReservations):
        startDay = randrange(1,29)  # Staying overnight means max day is 29
        startDayList.append(startDay)
        f.write("\t\t(= (start_day r" + str(i) + ") " + str(startDay) + ")\n")
    f.write("\n")

    # Write random end_day
    for i in range(0, nReservations):
        endDay = randrange(startDayList[i]+1, 30)   # endDay must be larger than startDay
        f.write("\t\t(= (end_day r" + str(i) + ") " + str(endDay) + ")\n")
    f.write("\n")

    # Write random tamano_habitacion
    for i in range(0, nRooms):
        tamanoHabitacion = randrange(1,5)
        f.write("\t\t(= (tamano_habitacion h" + str(i) + ") " + str(tamanoHabitacion) + ")\n")
    f.write("\n")

    # Write random tamano_reserva
    for i in range(0, nReservations):
        tamanoHabitacion = randrange(1,5)
        f.write("\t\t(= (tamano_reserva r" + str(i) + ") " + str(tamanoHabitacion) + ")\n")
    f.write("\t)\n")
    f.write("\n")

def writeGoal():
    f.write("\t(:goal (or (forall (?res - reserva) (visitada ?res))))\n")

def writeMetric(extension):
    if extension > 0:
        f.write("\t(:metric minimize (dias_libres))\n")

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
    if extension < 0 or extension > 4 or nRooms < 1 or nReservations < 1:
        usage()
        
    # Write file
    f.write("(define (problem generated) (:domain hotel)\n") # Open header
    writeObjects(nRooms, nReservations)
    writeInit(extension, nRooms, nReservations)
    writeGoal()
    writeMetric(extension)
    f.write(")") # Close header
    print("File generated!")


if __name__ == "__main__":
    main()
