setwd("D:\\Practice\\r")
dataset = read.csv('Salary_Data.csv')
library(caTools)
split = sample.split(dataset$Salary, SplitRatio = 0.7)
trainingset = subset(dataset, split == TRUE)
testset = subset(dataset, split == FALSE)
lm.r= lm(formula = Salary ~ YearsExperience,
         data = trainingset)
coef(lm.r)
ypred = predict(lm.r, newdata = testset)
library(ggplot2)
ggplot() + geom_point(aes(x = trainingset$YearsExperience,
                          y = trainingset$Salary), colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience,
                y = predict(lm.r, newdata = trainingset)), colour = 'blue') +
ggtitle('Salary vs Experience (Training set)') +
  xlab('Years of experience') +
  ylab('Salary')
ggplot() +
  geom_point(aes(x = testset$YearsExperience, y = testset$Salary),
             colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience,
                y = predict(lm.r, newdata = trainingset)),
            colour = 'blue') +
  ggtitle('Salary vs Experience (Test set)') +
  xlab('Years of experience') +
  ylab('Salary')