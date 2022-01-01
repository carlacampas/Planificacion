import os
import constants

# Generate instances of problemss
for extension in range(0,constants.EXTENSIONS):
    # Create directory for all the problems of the same extension
    newDirName = "g" + str(extension)
    os.system("mkdir " + newDirName)
    # Generate problems by iteratively calling to generator
    # TODO: Potser caldria fixar els nRooms i nReservations d'una altra manera...
    for i in range(1, constants.N_PROBLEMS + 1):
        nRooms = i
        nReservations = 4*i
        fileName = "g" + str(extension) + "/p" + str(nRooms)
        command = "python3 generator.py " + str(extension) + " " + str(nRooms) + " " + str(nReservations) + " " + fileName
        os.system(command)
