clear

* Assume each variable is standardized
matrix input Mean = (0,0,0,0,0)
matrix input SD = (1,1,1,1,1)

* Substitute the following number with your correlation coefficient
matrix input Corr = (1, .30, .30, .25, .25 \ .30, 1, .60, .60, .60 \ .30, .60, 1, .60, .60 \ .25, .60, .60, 1, .60 \ .25, .60, .60, .60, 1)

* Now use corr2data to create a pseudo-simulation of the data
corr2data var_y var_x1 var_x2 var_x3 var_x4, seed(0) n(10609) means(Mean) corr(Corr) sds(SD)    

* Confirm that all is well
corr var_y var_x1 var_x2 var_x3 var_x4, means

*1.Partial Correlation

regress var_y var_x1 var_x2 var_x3 var_x4

estat esize

pcorr  var_y var_x1 var_x2 var_x3 var_x4

*2.Dominance anlaysis

domin var_y var_x1 var_x2 var_x3 var_x4,    reg(regress)

*3.Relative weight analysis

domin var_y var_x1 var_x2 var_x3 var_x4, epsilon reg(regress) 

*4 Produce standard errors using bootstrapping

bootstrap, reps(1000): domin var_y var_x1 var_x2 var_x3 var_x4, epsilon

estat bootstrap



/*

Reference

Tonidandel, S., & LeBreton, J. M. (2011). Relative Importance Analysis: A Useful Supplement to Regression Analysis. Journal of Business and Psychology, 26(1), 1–9. https://doi.org/10.1007/s10869-010-9204-3

*/
