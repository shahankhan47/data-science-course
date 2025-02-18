Countplot

A countplot is used to show the counts of observations in each categorical bin.
```python
import seaborn as sns
import matplotlib.pyplot as plt

# Sample DataFrame
import pandas as pd
data = {'country': ['USA', 'Canada', 'USA', 'Canada', 'Mexico', 'USA', 'Mexico']}
df = pd.DataFrame(data)

# Create a countplot
sns.countplot(x='country', data=df)

# Display the plot
plt.title('Count of Countries')
plt.show()
```

Barplot

A barplot is used to show the average (or other aggregate) of a numeric variable for each category.
```python
# Sample DataFrame
data = {'continent': ['Asia', 'Europe', 'Asia', 'Europe', 'Africa'],
        'count': [10, 20, 15, 25, 30]}
df_bar = pd.DataFrame(data)

# Create a barplot
sns.barplot(x='continent', y='count', data=df_bar)

# Display the plot
plt.title('Count by Continent')
plt.show()
```