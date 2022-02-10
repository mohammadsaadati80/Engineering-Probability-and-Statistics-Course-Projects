#Q1
printHIS <- function(a) {
  x <- c(1:10000)
  nn<- c()
  h<-c()
  ex<-c()
  for(val in x){
    nm=rexp(n=a)
    ex<-c(ex,nm)
    h<-c(h,mean(nm))
    nn<-c(nn,rnorm(n=1,mean = 1,sd=1/sqrt(a)))
  }
  hist(h,xlim = c(0,max(h)),freq = F,breaks = 20,col = "White")
  x <- seq(0,max(nn), length = 40)
  y <- dnorm(x, mean =1, sd = 1/sqrt(a))
  lines(x,y,col="Blue",lwd=2)
  d = dexp(sort(ex),rate = 1)
  lines(sort(ex),d,col='Red',lwd=2)
}
printHIS(1);
printHIS(5);
printHIS(10);
printHIS(100);
printHIS(1000);
printHIS(10000);

#Q2
count <-c(1:1000)
r <-c()
for(i in count)
{
  ex<-c()
  for(j in count)
  {
    p = rexp(n=i)
    ex<-c(ex,mean(p))
  }
  r<-c(r,var(ex))
}
plot(r,xlab  = "n")
