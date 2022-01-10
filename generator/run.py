import os
import constants

# Generate instances of problems
print("Working on it...")
for extension in constants.EXTENSIONS:
    for i in range(1, constants.N_PROBLEMS + 1):
        unsolvable = True
        while unsolvable:
            if extension == 0:
                domainFile = "../nivel_basico" + "/domain.pddl"
            else:
                domainFile = "../extension" + str(extension) + "/domain.pddl"
            fileName = "g" + str(extension) + "/p" + str(i)
            problemFile = fileName + ".pddl"
            outputFile = fileName + ".txt"
            command = "./ff -o " + domainFile + " -f " + problemFile + " > " + outputFile
            os.system(command)

            # Check if plan can be solved. If not, generate new problem until it can be solved
            f = open(outputFile, 'r')
            lines = f.readlines()
            time = lines[-2].strip().split()[0]
            if extension < 3:
                unsolvable = time == "ff:"
            else:
                unsolvable = False
            if unsolvable:   # Problem cannot be solved
                command = "python3 generator.py " + str(extension) + " " + str(i) + " " + str(4*i) + " " + fileName
                os.system(command)
print("Done!")
