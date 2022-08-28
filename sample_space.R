# 20 gold , 30 silver , 50 Bronze coins
#draw 10 coins from it
print(sample(1:100,4))#getting 4 from 1 to 100
print(sample(1:100,4,replace=TRUE))#getting 4 from 1 to 100 with replacement
print(sample(1:5,2,replace=TRUE,prob=c(0.1,0.1,0.1,0.3,0.99)))
#in the above example as prob is mentioned the data is selected likewise
sample (c('gold','silver','bronze'), size=10, replace=T, prob=c(.20,.30,0.50))
#A room has n people, and each has an equal chance of being born on any of the 365
#days of the year. What is the probability that two people in the room have the same birthday?
#way 1
n=2
prob=1-(choose(365,n)*factorial(n)/365^n)
print(prob)
#keep 2 bdays for 2 people , sub from 1 gives ans
m=2
n=1000
#way 2
count=0
for(i in 1:n)
{
  birthday=sample(1:365,m,replace=TRUE)
  g=as.integer(any(duplicated(birthday)))
  count=count+g
}
print(count/n)
#conditional prob
#probability of being male and preferring baseball
p_male_baseball <- 0.113
#probability of preferring baseball
p_baseball <- 0.226
#calculate probability of being male, given that individual prefers baseball
p_male_baseball / p_baseball