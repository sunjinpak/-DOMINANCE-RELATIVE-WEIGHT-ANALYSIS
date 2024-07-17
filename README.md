# -DOMINANCE-RELATIVE-WEIGHT-ANALYSIS
Code Overview
Data Simulation:

Means and Standard Deviations: The code initializes the mean and standard deviation matrices for the variables.

Correlation Matrix: The correlation matrix is specified to define the relationships between the variables.

Data Generation: corr2data is used to generate a dataset based on the specified means, standard deviations, and correlations.
Partial Correlation:

The code runs a multiple regression and calculates partial correlations for the variables of interest.

Dominance Analysis:
This analysis identifies the relative importance of predictors in the regression model.
Relative Weight Analysis:

Relative weights of predictors are calculated to assess their contribution to the variance explained by the model.
Bootstrap Standard Errors:

The code employs bootstrapping to estimate the standard errors of the dominance and relative weight analyses, enhancing the robustness of the results.

References
The analyses are informed by:
Tonidandel, S., & LeBreton, J. M. (2011). Relative Importance Analysis: A Useful Supplement to Regression Analysis. Journal of Business and Psychology, 26(1), 1–9. https://doi.org/10.1007/s10869-010-9204-3
