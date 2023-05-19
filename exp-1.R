library(RWeka)

setwd("D:\\Practice\\r")
getwd()

rating<-1:4
Name <- c('Virat', 'Rohit', 'Ravinder', 'hardik')
ID <- c('18', '45', '08', '33')
Age <- c(34,35,17,34)

Information <- data.frame(rating, Name, ID, Age)
print(Information)

print(class(Information))

write.arff(Information, file("StudentData.arff"))