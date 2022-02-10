#Q2
landa <- 0.6
n = 1000
exp <- c(1:n)
for(i in 1:n)
{
  u = runif(1)
  exp[i] = (-1/landa)*log(u)
}
s = seq(0,10,0.5)
c = cut(exp,s,right = FALSE)
result = table(c)
cbind(result)
barplot((result))
