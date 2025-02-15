#   Yhat = m1x1 + m2x2 + m3x3 + ... + mnxn + c
#   c = intercept (X = 0)
#   m1 = coefficient of x1
#   m2 = coefficient of x2
#   m3 = coefficient of x3
#   mn = coefficient of xn

from sklearn.linear_model import LinearRegression

# LinearRegression constructor to create the model
lm = LinearRegression()

Z = df[["horse-power", "curb-weight", "engine-size", "highway-mpg"]]            # Independent variables
Y = df["price"]                                                                 # Dependent variable

lm.fit(Z, Y)

Yhat = lm.predict(X)