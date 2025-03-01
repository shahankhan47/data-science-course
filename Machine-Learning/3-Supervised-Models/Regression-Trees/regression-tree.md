In the lecture on Regression Trees, you learned the following key points:

Definition: A regression tree is similar to a decision tree but is used to predict continuous values instead of discrete classes.

Target Variables: In classification, the target variable is categorical (e.g., true/false), while in regression, it is a continuous value (e.g., temperature, salary).

Prediction Method:
    Classification trees use a majority vote at leaf nodes.
    Regression trees use the average of target values at leaf nodes.

Creation Process: Regression trees are built by recursively splitting the dataset to maximize information gain, using criteria like mean-squared error (MSE) to evaluate split quality.

Splitting Strategy: The tree finds the best feature and threshold to split nodes, minimizing variance in predicted values.

Threshold Selection: For continuous features, candidate thresholds can be defined as midpoints between sorted values.

======================================================================================================================================
Using the mean instead of the median for predictions in a regression tree can have different implications based on the distribution of your data:

Mean:
    Sensitive to outliers: If your data contains extreme values, the mean can be significantly affected, leading to skewed predictions.
    Best for normally distributed data: When the data is symmetrically distributed, the mean provides a good central tendency measure.

Median:
    Robust to outliers: The median is less affected by extreme values, making it a better choice for skewed distributions.
    Represents the middle value: It divides the dataset into two equal halves, providing a more stable measure of central tendency in the presence of outliers.

======================================================================================================================================
To measure the quality of a split in a regression tree, you can use the mean-squared error (MSE). Here’s a brief overview of the process:

Calculate MSE for Each Split: For each potential split of a feature, calculate the MSE for the left and right subsets created by the split.

Weighted Average of MSEs: The MSE of the split is computed as the weighted average of the MSEs of the resulting subsets. The formula is:
    [
    \text{Average MSE} = \frac{1}{N} \left( n_L \cdot \text{MSE}_L + n_R \cdot \text{MSE}_R \right)
    ]

    where:

    (N) is the total number of observations in both split nodes.
    (n_L) and (n_R) are the number of observations in the left and right splits, respectively.
    (\text{MSE}_L) and (\text{MSE}_R) are the MSEs of the left and right splits.

Choose the Split with Lowest MSE: The split that results in the lowest weighted average MSE is selected, as it indicates the least variance in the predicted values and thus a higher quality of the split.

======================================================================================================================================
Several factors influence the choice of split in regression trees:

Feature Selection:
    The algorithm evaluates different features to determine which one provides the best split based on minimizing the mean-squared error (MSE).

Threshold Values:
    For continuous features, various threshold values are tested to find the one that results in the lowest MSE after the split.

Data Distribution:
    The distribution of the target variable within the dataset can affect the choice of splits. Features that lead to more uniform distributions of target values in the resulting nodes are preferred.

Number of Observations:
    The number of data points in each node can influence the split. A split that results in nodes with too few observations may not be reliable.

Variance Reduction:
    The goal is to minimize the variance of the target values in the resulting nodes. The split that achieves the greatest reduction in variance is typically chosen.

Overfitting Considerations:
    The algorithm may also consider the risk of overfitting. Splits that are too specific to the training data may be avoided in favor of more general splits.