#q1
n <- 100
df <- n - 1
a<-rt(n, df)
print(a)
hist(a, breaks = 'Scott', freq = FALSE)
#q2
a<-rchisq(100, 2) 
print(a)
b<-rchisq(100, 10) 
print(b)
#q3
rn<-seq(from = -6, to = 6, length.out = 100)
print(rn)
v1<-c()
v2<-c()
v3<-c()
v4<-c()
?dt
for (x in 1:100) {
  ans1<-dt(rn[x],1)
  v1<-append(ans1,v1)
  ans2<-dt(rn[x],4)
  v2<-append(ans2,v2)
  ans3<-dt(rn[x],10)
  v3<-append(ans3,v3)
  ans4<-dt(rn[x],25)
  v4<-append(ans4,v4)
}
plot(rn,v1,col="blue",type="l")
lines(rn,v2,col="black",type="l")
lines(rn,v3,col="green",type="l")
lines(rn,v4,col="orange",type="l")
#q4
print(qf(0.95,10,20))
print(pf(1.5,10,20,lower.tail = TRUE))
print(pf(1.5,10,20,lower.tail = FALSE))
q=c(0.25,0.5,0.75,0.999)
for (i in q)
{
  print(qf(i,10,20))
}
hist(rf(1000,10,20))
