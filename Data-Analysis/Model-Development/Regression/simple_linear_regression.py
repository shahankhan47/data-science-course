from sklearn.linear_model import LinearRegression

# LinearRegression constructor to create the model
lm = LinearRegression()

# x-axis and y-axis (x and y columns)
X = df[["highway-mpg"]]         # Independent variable
Y = df["price"]                 # Dependent variable

# Fit the model to find slope and intercept
lm.fit(X,Y)
slope = lm.coef_
intercept = lm.intercept_

# Make a prediction
Yhat = lm.predict(X)

# Relationship:
# price = intercept + slope * highway-mpg

