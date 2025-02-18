Architecture built on 3 layers:
    - Backend layer - FigureCanvas, Renderer, Event
    - Artist layer- Artist
    - Scripting layer - pyplot

===================================================================================================================================
Plotting in Python

Plot Function (Can generate multiple type of plot using only one function - plot()):
``` python
# Force generate the plot in the same window in Jupyter Notebook
%matplotlib inline      # Limitation - cannot modify a figure once it's generated. Need to plot again to modify before calling show()
%matplotlib notebook    # Overcome inline limitation. Can modify a figure in Jupyter Notebook

import matplotlib.pyplot as plt
plt.plot(5,5,'o')                   # 'o' - type of plot
plt.show()
```

Pandas has built-in implementation for matplotlib.
Let's say we have a dataframe df.
We can call:
``` python
df.plot(kind="line")                # Line plot
df["column"].plot(kind="hist")      # Histogram
```