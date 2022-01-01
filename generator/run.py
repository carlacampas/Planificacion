import os
import constants

# Generate instances of problems
print("Working on it...")
for extension in range(0,constants.EXTENSIONS):
    for i in range(1, constants.N_PROBLEMS + 1):
        if extension == 0:
            domainFile = "../nivel_basico" + "/domain.pddl"
        else:
            domainFile = "../extension" + str(extension) + "/domain.pddl"
        fileName = "g" + str(extension) + "/p" + str(i)
        problemFile = fileName + ".pddl"
        outputFile = fileName + ".txt"
        command = "./ff -o " + domainFile + " -f " + problemFile + " > " + outputFile
        os.system(command)
print("Done!")
