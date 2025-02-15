# Model evaluation using visualization can be done in multiple ways.
# One way is: Regression Plot.

import seaborn as sns

sns.regplot(x="highway-mpg", y="price", data=df)

# Second Way: Residual Plot.
sns.residplot(df['highway-mpg'], df['price'])

# This will generate a plot which won't be accurate and will have residual points. These residual points in the residual plot
# can be further plotted manually by finding the different between the actual value and the predicted value and plotting the
# data again. -- See residual-plot.png

# The result of this should be a scattered plot that is straight (even if it is scattered widely) -- see linear-model-plot.png
# and not curved because if the residuals
# is curved then the model is non-linear and should be evaluated differently. -- see non-linear-model-plot.png
# If the variance appears to change with x-axis then our model is incorrect. -- see incorrect-model.png

# Distribution Plot - Counts predicted value vs the actual value: -- see distribution-plot.png
# Extremely useful for visualizing models with more than 1 independent variable (x) i.e. multiple-linear-regression.
ax1 = sns.distplot(df['price'], hist=False, color="r", label="Actual Value")
sns.distplot(Yhat, hist=False, color="b", label="Fitted Value", ax=ax1)