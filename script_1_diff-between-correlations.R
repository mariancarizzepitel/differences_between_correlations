library(apaTables)
library(tidyverse)
library(cocor)

#Q1: rating-complaint correlations vs. rating-critical correlation
r.jk <- .83
r.jh <- .16
r.kh <- .19
n <- 30
cocor.dep.groups.overlap(r.jk,r.jh,r.kh,n)
##(delta) r = .67, 95% CI [.32,1.04]
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

library(predictionInterval)

#Q3: replication of rating-privileges
pi.r(r=.43,n=30,rep.n=100)
##PI: 95% PI [.05,.74]

#Q4
#Not possible. Maxes out at 1000, 95% PI [.08,.68]
#If first study has small n and replication study has large n and original study
#had wide PI, replication study does not fall ...
#Ask on Monday 

#Q5: rating-privileges correlation in study 2 vs. study 1 
cocor.indep.groups(r1.jk = .43,r2.hm = .10, n1=30, n2=1000)
## (delta)r = .33, 95% CI [-.02,.59]
## null hypothesis retained (interval includes 0), no significant change

#Q6: Conclusion about strength of rating-privileges correlation
#the correlation between rating and privilegs ranging from nothing to .59