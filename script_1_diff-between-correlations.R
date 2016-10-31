library(apaTables)
library(tidyverse)
library(cocor)
library(predictionInterval)

#Q1: rating-complaint correlations vs. rating-critical correlation
r.jk <- .83
r.jh <- .16
r.kh <- .19
n <- 30
cocor.dep.groups.overlap(r.jk,r.jh,r.kh,n)
##(delta) r = .67, 95% CI [.32,1.04]
##Change to 1.00, can't be more than 1. 
##Significant change with rating-complaints bigger 

#Q2: rating (j)-complaint (k) vs. raises (h)-critical(m) correlations
r.jk <- .83
r.hm <- .38
r.jh <- .59
r.jm <- .16
r.kh <- .67
r.km <- .19 
cocor.dep.groups.nonoverlap(r.jk,r.hm,r.jh,r.jm,r.kh,r.km,n)
##(delta) r = .45, 95% CI [.14,.81]

#Q3: replication of rating-privileges
pi.r(r=.43,n=30,rep.n=100)
##PI: 95% PI [.05,.74]

#Q4
#Not possible. Maxes out at 1000, 95% PI [.08,.68]
#It is not possible to do this because of the large confidence interval
##in the original ratings-privileges correlation. Prediction intervals 
##involve similar calculations to confidence intervals, and difference 
##confidence intervals are always larger than the two individual correlation 
##confidence intervals that are being compared. Because the original study 
##found a ratings-privileges confidence interval with a width of .60, it is
##not possible to calculate a prediction interval with a smaller width.

#Q5: rating-privileges correlation in study 2 vs. study 1 
cocor.indep.groups(r1.jk = .43,r2.hm = .10, n1=30, n2=1000)
## (delta)r = .33, 95% CI [-.02,.59], p = .07
## null hypothesis retained (interval includes 0), no significant change
## This means that we cannot rule out that the two correlations came from the same population

#Q6: Conclusion about strength of rating-privileges correlation
#The correlation between ratings and privileges obtained in Table 1 
##was r = .43, 95% CI [.08, .68]; however, this correlation came from a 
##sample of 30. We could not rule out that a correlation of .10 from a sample of 1000 
##came from a different population. Because a sample size of 1000 is considerably larger 
##than a sample size of 30, we should assume that the second correlation is much more
##informative than the first study. As such, we can infer that there is likely a weak
##positive correlation between ratings and privileges.