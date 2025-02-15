from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression
from sklearn.preprocessing import StandardScaler

from sklearn.pipeline import Pipeline

input = [
    ('polynomial', PolynomialFeatures(degree=2)),
    ('scale', StandardScaler())
    #......
    #......
    ('Model', LinearRegression())
]

pipe = Pipeline(input)

# Train the pipeline:
pipe.fit(df[['horsepower', 'curb-weight', 'engine-size', 'highway-mpg']], y)
yhat = pipe.predict(X[['horsepower', 'curb-weight', 'engine-size', 'highway-mpg']])