#12 dice roll , X->sum of 6
# 7 6's
print(dbinom(7,size=12,prob=1/6))
# 7 , 8 , 9. do pbinom --> 9 - 6
print(pbinom(9,size=12,prob=1/6)-pbinom(6,size=12,prob=1/6))
# do binom 7 + 8 + 9
a<-dbinom(7,size=12,prob=1/6) + dbinom(8,size=12,prob=1/6) + dbinom(9,size=12,prob=1/6)
print(a)#limits ?????
#Assume that the test scores of a college entrance exam fits a normal distribution.
#Furthermore, the mean test score is 72, and the standard deviation is 15.2. What is
#the percentage of students scoring 84 or more in the exam?
# normal dist --->pnorm or dnorm
more_than_84<-1-pnorm(84,mean=72,sd=15.2)
print(more_than_84)
#lower.tail -->False.  inverse of dist func
less_than_84<-1-pnorm(84,mean=72,sd=15.2,lower.tail=FALSE)
print(less_than_84)
#poissons distribution. --> on an avg 
prob<-dpois(0,lambda=5)
print(prob)
prob2<-ppois(51,lambda=50)-ppois(47,lambda = 50) 
print(prob2)
#dhyper
prob6<-dhyper(x=3,m=17,n=233,k=5)
print(prob6)
a<-(choose(17,3)*choose(233,2))/choose(250,5)
print(a)

