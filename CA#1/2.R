
outcome <- data.frame()
outcome <- read.csv("outcome.csv")
outcome[outcome == ""] <- NA
print(names(outcome))
print(head(outcome, 10))
print(table((outcome$race)))

income_native = table(outcome$income,outcome$native.country)
print(income_native)
barplot(income_native)

income_edu = table(outcome$education, outcome$income)
print(income_edu)
mosaicplot(income_edu)

plot(table(outcome$age), type = "l")
