Let's walk through a practical example using a sample dataset. We'll create a pivot chart to visualize sales data.

Sample Data:
For this example, we are creating dummy data on sales of IT products across different quarters. The data generated would be of the following form.

S.No.	Date	Category	        Subcategory	    Sales
0	    Q1	    Peripherals	        Accessories	    2092
1	    Q1	    Software	        Accessories	    4695
2	    Q1	    Software	        Components	    3106
3	    Q1	    Desktops	        Accessories	    3527
4	    Q1	    Laptops	Software    Suites	        1182
…	    …	    …	                …	            …
2395	Q4	    Desktops	        Accessories	    2557
2396	Q4	    Software	        Accessories	    2626
2397	Q4	    Desktops	        Components	    2427
2398	Q4	    Software	        Components	    1768
2399	Q4	    Peripherals	        Components	    1714

Code to generate above data:
``` python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
# Define the parameters
num_quarters = 4
num_categories = 4
num_subcategories = 3
num_samples = num_quarters * num_categories * num_subcategories*50
# Generate sample sales data
np.random.seed(40)
# Creating sample data
dates = np.repeat(['Q1','Q2','Q3','Q4'], 50*num_categories * num_subcategories)
categories = np.tile(np.random.choice(['Laptops', 'Desktops', 'Peripherals', 'Software'], size=num_quarters*50), num_categories * num_subcategories)
subcategories = np.tile(np.random.choice(['Accessories', 'Components', 'Software Suites'], size=num_quarters*50), num_categories * num_subcategories)
sales_values = np.random.randint(1000, 5000, size=num_samples)
# Create DataFrame
df = pd.DataFrame({
    'Date': dates,
    'Category': categories,
    'Subcategory': subcategories,
    'Sales': sales_values
})
```

1. Create a pivot table:
``` python
# Create pivot table
pivot_table = df.pivot_table(index='Date', columns=['Category','Subcategory'], values='Sales', aggfunc=np.sum)
```

2. Generate Pivot Chart:
``` python
# Plotting a pivot chart
pivot_table.plot(kind='bar', figsize=(14, 8))
plt.title('Sales Summary of IT Products by Category and Subcategory')
plt.xlabel('Quarters')
plt.ylabel('Total Sales')
plt.grid(False)
plt.legend(title=('Category', 'Subcategory'), bbox_to_anchor=(1.05, 1), loc='upper left')
plt.tight_layout()
plt.show()
```