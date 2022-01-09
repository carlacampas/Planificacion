import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

row = pd.read_csv('timeResults.csv', header=None)
x = np.arange(1, len(row.iloc[0]) + 1)
y = np.array(row.iloc[0])
# plotting
plt.title("Extensión 2: Tiempo de ejecución según el tamaño del problema")
plt.xlabel("Tamaño del problema (nº habitaciones)")
plt.ylabel("Tiempo de ejecución (s)")
plt.plot(x, y, color ="blue")
plt.show()
