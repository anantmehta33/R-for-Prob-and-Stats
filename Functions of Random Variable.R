#1
vec1<-c(0,1,2,3,4)
prob1<-c(0.41,0.37,0.16,0.05,0.01)
expected=0
for (i in 1:5)
{
  vec1[i]<-vec1[i]*prob1[i]
}
print(sum(vec1))

#or
print(weighted.mean(vec1,prob1))
#2
f<-function(t)
  {
    t*0.1*exp(-0.1*t)
  }
#to integrate , in expectation lmts are 0 to inf
print(integrate(f,lower = 0, upper = Inf))
#3
vec<-c(0,1,2,3)
prob<-c(0.1,0.2,0.2,0.5)
# x sold , buy=18
# earn = 12x 
# revenue =  12x-18+(3-x)*2 = 12x-18+6-2x=10x-12
vecy<-c()
expected=0
for (i in 1:4)
{
  vecy[i]=10*vec[i]-12
}
print(vecy)
for (i in 1:4)
{
  expected=expected+vecy[i]*prob[i]
}
print(expected)
#4
f<-function(t){t*0.5*exp(-t)}
#to integrate , in expectation lmts are 1 to inf
#1st moment :
print(integrate(f,lower = 1, upper = 10))
#sec:
f2<-function(t){t^2*0.5*exp(-(t))}
print(integrate(f2,lower = 1, upper = 10))
a<-integrate(f2,lower = 1, upper = 10)
b<-integrate(f,lower = 1, upper = 10)
print(a$value-(b$value)^2)
#5
vec<-c(1,2,3,4,5)
p<-c()
for (i in 1:5)
{
  p[i]=0.75*((0.25)^(vec[i]-1))
}
a=0
for (i in 1:5)
{
  a=a+p[i]*(vec[i]^2)
}
print(p[3])
















