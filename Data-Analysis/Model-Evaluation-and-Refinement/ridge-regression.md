For models with multiple independent features and ones with polynomial feature extrapolation, it is common to have colinear combinations of features. Left unchecked, this multicollinearity of features can lead the model to overfit the training data. To control this, the feature sets are typically regularized using hyperparameters.

Ridge regression is the process of regularizing the feature set using the hyperparameter alpha. The upcoming video shows how Ridge regression can be utilized to regularize and reduce standard errors and avoid over-fitting while using a regression model.

Ridge Regression is a type of linear regression that includes a regularization term to prevent overfitting. 

Purpose:

Prevent Overfitting: Ridge regression helps to avoid overfitting, which occurs when a model learns the noise in the training data rather than the underlying pattern. This is particularly important when dealing with complex models or datasets with many features.

Control Coefficient Size: By introducing a penalty for large coefficients through a parameter called Alpha, ridge regression keeps the model simpler and more generalizable to new data.

Improve Model Performance: It aims to improve the model's performance on unseen data by balancing the fit to the training data and the complexity of the model.

In summary, ridge regression is used to create more robust models that perform better on new data by controlling the complexity of the model.

====================================================================================================================================
The Alpha parameter in ridge regression is significant for several reasons:

Controls Regularization: Alpha determines the strength of the regularization applied to the model. A higher Alpha value increases the penalty on the size of the coefficients, which helps to reduce overfitting.

Impact on Coefficients:
    Small Alpha: If Alpha is too small, the model may not effectively prevent overfitting, leading to large coefficients and a complex model.
    Large Alpha: If Alpha is too large, the coefficients may shrink too much, resulting in underfitting, where the model is too simple to capture the underlying patterns in the data.

Model Flexibility: The choice of Alpha affects the flexibility of the model. A well-chosen Alpha allows the model to balance between fitting the training data well and maintaining generalizability to new data.

Selection through Cross-Validation: Alpha is typically selected using cross-validation, where different values are tested to find the one that maximizes performance metrics like R² or minimizes mean squared error on validation data.

In summary, the Alpha parameter is crucial for controlling the trade-off between bias and variance in ridge regression, ultimately influencing the model's performance.

``` python
from sklearn.linear_model import Ridge
RidgeModel = Ridge(alpha=0.1)
RidgeModel.fit(X, Y)
Yhat = RidgeModel.predict(X)
```

====================================================================================================================================
Grid Search:
Alpha parameter is called a hyperparameter.
Grid search is the process of automatically iterate through multiple alpha/hyperparamters using cross-validation to find the best
alpha/hyperparameter.

Process:
- Split data into 3 parts (Training set, Validation set and Testing set).
- Use R-squared or MSE for each model.
- Use 1st part to train the model to find different hyperparameters.
- Select the hyperparameter that minimizes the MSE or maximizes the RSE on the validation set.
- Finally test the model performamce using test data.

``` python
from sklearn.linear_model import Ridge
from sklearn.model_selection import GridSearchCV

parameters = [{'alpha': [0.001, 0.01, 0.1, 1, 10, 100, 1000, 10000, 100000], 'normalize': [True, False]}]

RR= Ridge()

Grid = GridSearchCV(RR, parameters, cv=4) # splitting data into 4 partitions
Grid.fit(x_data[['horsepower', 'curb-weight', 'engine-size', 'highway-mpg']], y_data)

# Find the best alpha/hyperparameter
Grid.best_estimator_

scores = Grid.cv_results_
scores['mean_test_score']           # Example to get the mean score on the validation data
```