exam_data <- read.csv(("exam_data.csv"))
exam1 <- c(exam_data[,1])
exam2 <- c(exam_data[,2])
min1 = 100
max1 = 0
min2 = 100
max2 = 0
size = length((exam1))
for(i in 1:size){
  if(exam1[i] > max1)
  {
    max1 = exam1[i] 
  }
  
  if(exam2[i] > max2)
  {
    max2 = exam2[i]
  }
  
  if(exam1[i] < min1)
  {
    min1 = exam1[i]
  }
  
  if(exam2[i] < min2)
  {
    min2 = exam2[i]
  }
}
# min1 = 59, min2 = 64, max1 = 99 , max2 = 100
sum_exam1 = 0
sum_exam2 = 0
avg_exam2 = 0
avg_exam1 = 0 
for (i in 1:size){
  sum_exam1 <- sum_exam1 + exam1[i]
  sum_exam2 <- sum_exam2 + exam2[i]
}
avg_exam1 = sum_exam1 / size
avg_exam2 = sum_exam2 / size
#avg1 = 84.2 , avg2 = 80.55
middle1 = 0
middle2 = 0

if (size %% 2 == 0)
{
  middle1 = (exam1[size / 2] + exam1[size / 2 + 1]) / 2
  middle2 = (exam2[size / 2] + exam2[size / 2 + 1]) / 2
}
else
{
  middle1 = exam1[(size + 1) / 2]
  middle2 = exam2[(size + 1) / 2]
}
#middle1 = 82.5 , middle2 = 72
sum_var1 = 0
sum_var2 = 0
for (i in 1:size)
{
  sum_var1 = sum_var1 + (exam1[i] - avg_exam1)^2
  sum_var2 = sum_var2 + (exam2[i] - avg_exam2)^2
}
var1 = sum_var1 / (size - 1)
var2 = sum_var2 / (size - 1)
#var1 = 128.094 , var2 = 160.786
diff = abs(exam2 - exam1)
print(boxplot((diff)))
#q1 = 5, q2= 6,5, q3 = 15.5
