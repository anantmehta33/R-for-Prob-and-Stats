vec<-c(1,2,3)
print(vec)
x<-rep(1:4)
vec2<-append(x,5)
print(vec2)
#max element in a vector
a<-c(10,15,20,25)
print(max(a))
print(min(a))
#factorial of a number
Myfunc<-function(num)
{
  mul=1
  for (i in 1:num)
  {
    mul=mul*i
  }
  return(mul)
}
print(Myfunc(5))
#calc
print(4-1)
print(4+1)