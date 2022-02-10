#Q1
random_variable <- runif(1)

#Q2
p = 0.6

my_bernulli <- function(p) {
  u <- runif(1)
  if (u < p)
  {
    return (1)
  }
  if (u >= p)
  {
    return (0)
  } 
}

ber_temp = my_bernulli(p)
print(ber_temp)

#Q3
n = 10

my_binomiall <- function(n,p) {
  bino_s = 0
  for (i in 1:n)
    bino_s = bino_s + my_bernulli(p)
  return(bino_s)
}

bino_temp = my_binomiall(n, p)
print(bino_temp)

size = 100
bino_array <- c( 1:size)
for (i in 1:size)
  bino_array[i] = my_binomiall(n, p)
print(bino_array)

mean_of_bino_array <- mean(bino_array)
print(mean_of_bino_array)

var_of_bino_array <- var(bino_array)
print(var_of_bino_array)
