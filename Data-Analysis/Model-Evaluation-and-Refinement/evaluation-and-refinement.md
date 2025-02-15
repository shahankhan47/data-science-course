We split the dataset into:
    - Training data (70% or more of the dataset)
    - Testing data (30% or less of the dataset)

True generalization error:
Split the dataset into 90% training data and 10% test data and train and test the model on repeat using
different combinations of the 90-10 split of the dataset.
You will notice that each time the model is trained using one of the combinations, the results are different.
This is called true generalization error.

If we use more data for training and less data for testing then the generalization performance result would be more accurate
but less precise (results will be close to actual but will be spread out).

If we use less data for training and more data for testing then the generalization performance result would be less accurate
but more precise (far from actual but all results will be close to each other)

To overcome this, cross-validation is used which is the repeat of the combinations n number of times if there are n combinations
and the mean of the results is used.

To calculate cross-validation score:
``` python
from sklearn.model_selection import cross_val_score
scores = cross_val_score(lr, x_data, y_data, cv=10)
np.mean(scores)
```
lr = type of model (here linea regression)
x_data = predictor/independent variable
y_data = target/dependent variable
cv = no of partitions to do

To calculate cross-validation prediction:
``` python
from sklearn.model_selection import cross_val_predict
yhat = cross_val_predict(lr2e, x_data, y_data, cv=10)
```

====================================================================================================================================
Calculating multiple R-squared values for different polynomial order to evaluate the model in python:
``` python
Rsqu_test = []
order = [1,2,3,4,5,6,7,8,9,10]          // Calculating up until 10th order of polynomial
for n in order:
    pr = PolynomialFeatures(degree=n)
    x_train_pr = pr.fit_transform(x_train[['horsepower']])
    x_test_pr = pr.fit_transform(x_test[['horsepower']])
    lr.fit(x_train, y_train)
    Rsqu_test.append(lr.score(x_test, y_test))
```