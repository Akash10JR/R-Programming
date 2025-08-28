set.seed(123)
random_numbers<-rnorm(1000,mean=0,sd=1)
occurrences<-table(random_numbers)
print(occurrences)