To plot regression plots with Seaborn, you can use the regplot function. Here’s a step-by-step guide:

Import Seaborn: First, ensure you have Seaborn imported in your Python environment.
``` python
import seaborn as sns
```

Prepare Your Data: 
Make sure you have a DataFrame (e.g., df_total) with the data you want to plot. It should contain at least two columns: one for the independent variable (e.g., year) and one for the dependent variable (e.g., total).

Create the Regression Plot: 
Use the regplot function to create the plot. Here’s an example:
``` python
sns.regplot(x='year', y='total', data=df_total)
```

Customization: 
You can customize the plot by adding parameters. For example:

    Change the color:
``` python
sns.regplot(x='year', y='total', data=df_total, color='green')
```
    Change the marker shape:
``` python
sns.regplot(x='year', y='total', data=df_total, marker='+')
```

Display the Plot: Finally, use plt.show() to display the plot if you're using Matplotlib.
``` python
import matplotlib.pyplot as plt
plt.show()
```
This will create a scatter plot with a regression line and a confidence interval. 