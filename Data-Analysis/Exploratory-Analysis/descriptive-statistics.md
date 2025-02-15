Ways to describe your data:
Pandas: df.describe() - describe count, mean, std, min, 25%, 50%, 75%, max.
Pandas: df["categorical-column"].value_counts() - Summarize categorical data. (Visualization - Box Plots)
        sns.boxplot(x="categorical-column", y="column-value-name", data=df)

Scatter Plot: Each observation represented as a plot.
                Scatter plots show relationship between 2 variables.
                1. Predictor/independent variables on x-axis.
                2. Target/dependent variables on y-axis.

                y = df["column-value"]
                x = df["column"]
                plt.scatter(x,y)