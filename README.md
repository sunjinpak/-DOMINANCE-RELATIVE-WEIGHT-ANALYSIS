# Dominance and Relative Weight Analysis in Stata

Stata code for conducting dominance analysis and relative weight analysis to assess the relative importance of predictors in regression models. Includes bootstrap standard errors for statistical inference.

## Overview

Standard regression coefficients can be misleading when predictors are correlated. Dominance analysis and relative weight analysis provide complementary approaches to decompose the explained variance (R-squared) among predictors, giving a clearer picture of each predictor's unique contribution.

This repository provides ready-to-use Stata `.do` files that implement both methods using the `domin` package.

## Files

| File | Description |
|------|-------------|
| `dominance_analysis.do` | Self-contained example using simulated data from a correlation matrix |
| `dominance_analysis_research.do` | Research template with a reusable program for batch analysis across multiple DVs |

## What's Included

### `dominance_analysis.do`

A step-by-step walkthrough that:

1. Simulates standardized data from a user-specified correlation matrix (`corr2data`)
2. Runs partial correlation analysis (`pcorr`)
3. Performs dominance analysis (`domin`)
4. Performs relative weight analysis (`domin` with `epsilon` option)
5. Computes bootstrap standard errors (1,000 replications)

### `dominance_analysis_research.do`

A reusable Stata program (`dominanalysis`) designed for research with:

- Control variables and covariates built into the program
- Pairwise correlations, dominance analysis, relative weights, and bootstrap SEs in one call
- Easy to extend for multiple dependent variables

## Prerequisites

Install the `domin` package in Stata:

```stata
ssc install domin
```

## Usage

### Quick Start with Simulated Data

Open `dominance_analysis.do` and modify the correlation matrix to match your data:

```stata
matrix input Corr = (1, .30, .30, .25, .25 \ ///
                     .30, 1, .60, .60, .60 \ ///
                     .30, .60, 1, .60, .60 \ ///
                     .25, .60, .60, 1, .60 \ ///
                     .25, .60, .60, .60, 1)
```

Then run the file in Stata.

### Using the Research Template

Customize the control variables and covariates in `dominance_analysis_research.do`, then call:

```stata
dominanalysis your_dv "iv1 iv2 iv3 iv4"
```

## References

- Tonidandel, S., & LeBreton, J. M. (2011). Relative importance analysis: A useful supplement to regression analysis. *Journal of Business and Psychology*, 26(1), 1-9. https://doi.org/10.1007/s10869-010-9204-3
- Azen, R., & Budescu, D. V. (2003). The dominance analysis approach for comparing predictors in multiple regression. *Psychological Methods*, 8(2), 129-148.

## License

MIT
