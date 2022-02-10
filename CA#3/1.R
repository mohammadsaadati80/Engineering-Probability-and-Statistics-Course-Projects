#Q1
ex1 = runif(n=100)
n1 = matrix(ex1,nrow = 10)
r1 = eigen(n1)
plot(r1$vectors)
ex2 = runif(n=2500)
n2 = matrix(ex2,nrow = 50)
r2 = eigen(n2)
plot(r2$vectors)
ex3 = runif(n=10000)
n3 = matrix(ex3,nrow = 100)
r3 = eigen(n3)
plot(r3$vectors)

#Q2
n=0
ver <- c(1:100)
nn4 <- c()
for(val in ver)
{
  ex4 = rnorm(n=25,mean = 0,sd=2)
  n4 = matrix(ex4,nrow = 5)
  r4=eigen(n4)
  nn4 <- c(nn4,r4$vectors)
  n = n + 1
}
plot(nn4)
n=0
nn5<- c()
for(val in ver)
{
  ex5 = rnorm(n=225,mean = 5,sd=1)
  n5 = matrix(ex5,nrow = 15)
  r5 = eigen(n5)
  nn5 <- c(nn5,r5$vectors)
  n = n + 1
}
plot(nn5)
n=0
nn6<- c()
for(val in ver)
{
  ex6 = rnorm(n=3600,mean = 5,sd=1)
  n6 = matrix(ex6,nrow = 60)
  r6 = eigen(n6)
  nn6 <- c(nn6,r6$vectors)
  n = n + 1
}
plot(nn6)
n=0
nn7<- c()
for(val in ver)
{
  ex7 = rnorm(n=10000,mean = 0,sd=1/100)
  n7 = matrix(ex7,nrow = 100)
  r7= eigen(n7)
  nn7 <- c(nn7,r7$vectors)
  n = n + 1
}
plot(nn7)
