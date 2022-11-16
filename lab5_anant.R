#Uniform distribution
#waiting time is more than 45 minutes
a<-punif(45,min=0,max=60)
print(1-a)
?punif
#waiting between 20 and 30
i<-punif(30,min=0,max=60)-punif(20,min=0,max=60)
print(i)
?punif
#exponential
lamda<-0.5
i<-dexp(3, rate = 1 / 2)
print(i)
x<-seq(0,5,1)
#print(x)
vec<-dexp(x,rate=1/2)
plot(x,vec)
#atmost 3 hrs
i<-pexp(3, rate = 1 / 2)
print(i)
x<-seq(0,5,1)
vec<-pexp(x,rate=1/2)
plot(x,vec,type='l')
a<-rexp(1000,1/2)
plot(a)
#print(rep(0, 2))
#gamma
a <-pgamma(1,shape=2,scale=1/3)
?pgamma
print(1-a)
qgamma(0.70,shape=2,scale=1/3)