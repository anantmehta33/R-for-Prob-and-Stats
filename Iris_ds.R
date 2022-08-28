#Working with iris dataset
df<-iris
print(mean(df$Sepal.Length))  #mean of sepal length in iris
print(median(df$Sepal.Width)) #mean of sepal width in iris
print(str(df))
print(df)
#to get range of sepal length
a<-range(df$Sepal.Length)
#to get span of sepal length
print(a[2]-a[1])
#to get 1st quartile of sepal length
print(quantile(df$Sepal.Length))[1]
#to find diff bw 3rd quantile and 1st quantile
print(quantile(df$Sepal.Length,0.75)-quantile(df$Sepal.Length,0.25))
#standard deviation of sepal length
print(sd(df$Sepal.Length))
#variance of sepal length
print(var(df$Sepal.Length))
#printing first sepal length
print(df$Sepal.Length[1])
#summary of df
print(summary(df))
#mode of sepal length
v<-c()
for( i in 1:150)
  {
  v=append(v,df$Sepal.Length[i])
}
#printing second element of vector v
print(v[2])
Myfunc <- function(v)
{
  u<-unique(v)
  tab <- tabulate(match(v,u))
  return (u[tab == max(tab)])
}
print(Myfunc(v))