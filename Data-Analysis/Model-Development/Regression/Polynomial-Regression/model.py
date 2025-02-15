
# Only for higher order polynomials but 1 dimensional.
import numpy as np

# x-axis, y-axis, order
f = np.polyfit(x, y, 3)
p = np.poly1d(f)
print(p)

# For multi-dimensional polynomial:
from sklearn.preprocessing import PolynomialFeatures
pr = PolynomialFeatures(degree=2, include_bias=False)
x_polly = pr.fit_transform(x[['horse-power', 'curb-weight']])

# Normalizing each feature simultaneously
from sklearn.preprocessing import StandardScaler
SCALE = StandardScaler()
SCALE.fit(x[['horse-power', 'highway-mpg']])
x_scale = SCALE.transform(x[['horse-power', 'highway-mpg']])