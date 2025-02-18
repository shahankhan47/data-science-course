Definition: A pie chart is a circular statistical graphic divided into segments to illustrate numerical proportions.

Example: The lecture used a pie chart representing the party-wise percentage of seats won in the Canadian federal election.

Creating a Pie Chart:
    - Use Pandas to group data by continent and sum the number of immigrants.
    - Import Matplotlib and use the plot function with kind='pie' to create the chart.
    - Add a title and display the chart using the show function.

Explode Property: This feature allows you to offset slices from the center to highlight specific sections.

Criticism: Some experts argue against using pie charts, stating that bar charts are more effective for accurately depicting data.

Creating a Pie chart with matplotlib:
```python
import pandas as pd
import matplotlib.pyplot as plt

df_canada = pd.read_csv('your_data_file.csv')  # Load your dataset
df_continents = df_canada.groupby('continent').sum()  # Group by continent


plt.figure(figsize=(8, 8))  # Optional: Set the figure size
plt.pie(df_continents['total'], labels=df_continents.index, autopct='%1.1f%%')
plt.title('Immigration to Canada by Continent')
plt.show()  # Display the pie chart

# Optional:
explode = (0.1, 0, 0, 0, 0, 0)  # Adjust the values to explode specific slices
plt.pie(df_continents['total'], labels=df_continents.index, autopct='%1.1f%%', explode=explode)

```