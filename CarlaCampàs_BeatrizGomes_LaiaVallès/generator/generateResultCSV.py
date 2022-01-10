import glob, os, csv, constants

c = open('timeResults.csv', 'w')
writer = csv.writer(c)
for i in constants.EXTENSIONS:
    # Generate a list of all result files
    fileList = sorted(glob.glob("g" + str(i) + "/*.txt"), key=os.path.getmtime)
    row = []
    for file in fileList:
        f = open(file, 'r')
        time = f.readlines()[-2].strip().split()[0] # Read first word of line containing time
        if time == 'ff:': # If plan wasn't possible
            row.append('NaN')
        else:
            row.append(time)
    writer.writerow(row)
