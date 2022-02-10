#Q1
countries <- data.frame()
countries <- read.csv("countries.csv")
countries[countries == ""] <- NA

#Q3
countries_matrix <- data.matrix(countries[,3:20])
cor_of_countrires <- cor(countries_matrix, use = "na.or.complete")
print(cor_of_countrires)
prmatrix((cor_of_countrires))

#Q4
plot(countries$Birthrate, countries$Agriculture, xlab = "Birthrate", ylab = "Agriculture")

#Q5
mean_of_Agriculture = mean(countries$Agriculture, na.rm =TRUE)
mean_of_Birthrate = mean(countries$Birthrate, na.rm =TRUE)
for (i in 1:length((countries$Agriculture)))
{
  if (is.na(countries$Agriculture[i]))
  {
    countries$Agriculture[i] = countries$Birthrate[i] * mean_of_Agriculture / mean_of_Birthrate
  }
}
plot(countries$Birthrate, countries$Agriculture, xlab = "Birthrate", ylab = "Agriculture")
