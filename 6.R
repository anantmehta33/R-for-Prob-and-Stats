#question 1
install.packages("pracma")
library("pracma")
fun <- function(x, y) 2*(2*x+3*y)/5
a=integral2(fun, 0, 1, 0, 1)
print(a)
f <- function(y) 2*(2*1+3*y)/5
b=integrate(f,0,1)
print(b)
f1 <- function(x) 2*(2*x+3*0)/5
b=integrate(f1,0,1)
print(b)
fun <- function(x, y) x*y*2*(2*x+3*y)/5
a=integral2(fun, 0, 1, 0, 1)
print(a)
#question 2
func <- function(x,y) (x+y)/30

f5<-function(x,y) (x+y)/30
A=matrix(c(0,0,0,0,0,0,0,0,0,0,0,0),nrow=3,ncol=4,byrow = T)
print(A)
for (y in 1:3)
{
  for (x in 1:4)
  {
    A[y,x] <- f5(x-1,y-1)
  }
}
print(A)
print(sum(A))
#g(x)
sum=0
g=0
for(y in 1:4)
{
  sum=0
    for(x in 1:3)
    {
      sum=sum+A[x,y]
    }
  print(sum)
}
#h(y)
h<-c()
sum=0
g=0
for(x in 1:3)
{
  sum=0
  for(y in 1:4)
  {
    sum=sum+A[x,y]
  }
  h<-append(h,sum)
}
print(h)
A[2,1]/h[2]
y<-c(0,1,2)
print(sum(y*h))