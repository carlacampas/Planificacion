import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import glob

fileList = glob.glob("*.csv")

for file in fileList:
    print(file)
    row = pd.read_csv(file, header=None)
    for i in range(0, len(row)):
        x = np.arange(1, len(row.iloc[i]) + 1)
        y = np.array(row.iloc[i])
        # plotting
        plt.title("Extensión " + file[3] + ": Tiempo de ejecución según el tamaño del problema")
        plt.xlabel("Tamaño del problema (nº habitaciones)")
        plt.ylabel("Tiempo de ejecución (s)")
        plt.plot(x, y, color ="blue")
        plt.show()
