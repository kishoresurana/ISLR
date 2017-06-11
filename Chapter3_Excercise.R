# 1.
# Based on p-values (statistical signifcant), and that the confint range, we know that Radio, TV are signifcant to explain the Sales data
# We see that the interaction Radio and Newspaper is significant in terms of p-values but, Newspaper itself is not significant

# 2. Didnt learn KNN clasifier

# 3.
# a) 
# i) No, since Beta3 is positive, F earn more than M
# ii) Yes
# iii) Yes
# iv) no

# b) F, IQ=110, GPA=4.0
50+20*4.0+0.07*110+1*35+110*4.0*0.01-10*4.0*1 = 137.1

# c) Event though coefficient is small, the p-value and confint (confident interval) that determines the significance of this interaction

# 4.
# a) Training - Cubic would be better
# b) Test - linear would be better
# c) Training - Cubic would be better
# d) Test - Cubic would be better


# 8.
# a)
library(MASS)
library(ISLR)
fit = lm(mpg~horsepower, Auto)
summary(fit)
# i) yes
# ii) 60%, statistically significant
# iii) negative

predict(fit, data.frame(horsepower=c(98)), interval = "confidence")
# iv)     fit      lwr      upr
#     24.46708 23.97308 24.96108
# b)
attach(Auto)
plot(horsepower, mpg)
abline(fit, col="red")
par(mfrow=c(2,2))
plot(fit)

# 9.
# a)
pairs(Auto)
?cor
summary(Auto)
# b)
cor(Auto[,c("mpg", "displacement", "horsepower", "weight", "acceleration", "year", "origin")])
fit=lm(mpg~.-name, Auto)
summary(fit)
# c)
# i) yes
# ii) Cylinders, displacement, horsepower, weight, year, origin
# iii) positive relationship - As year increases mpg increases.
?plot
plot(year, mpg);
fit2=lm(mpg~year, Auto);
abline(fit2, col="red");

# e) horsepower:acceleration interaction
par(mfrow=c(2,2))
plot(fit)
summary(fit)
fit3=lm(mpg~.+acceleration*displacement+acceleration*horsepower+acceleration*weight+acceleration:displacement+acceleration:horsepower+acceleration:weight, Auto)
summary(fit3)
summary(fit)

# f)
fit4=lm(mpg~.-name+acceleration*displacement+acceleration*horsepower+acceleration*weight+acceleration:displacement+acceleration:horsepower+acceleration:weight+I(weight^2)+I(displacement^2), Auto)
summary(fit4)

# 10)
# a)
?Carseats
names(Carseats)
summary(Carseats)
fit=lm(Sales~Price+Urban+US, Carseats)
summary(fit)
# b) Urban feature is not significant
confint(fit)
# c) Urban
# d) 
fit2 = lm(Sales~Price+US, Carseats)
summary(fit2)
confint(fit2)

# 11)
# a) the model is quite similar with/without the intercept. 
par(mfrow=c(1,1))
set.seed(1)
x=rnorm(100)
y=2*x+rnorm(100)
plot(x,y)
fit=lm(y~x)
abline(fit, col="red")
summary(fit)
fit2=lm(y~x+0)
abline(fit2, col="blue")
summary(fit2)
confint(fit2)

# 12)
# a) when x and y are equal
set.seed(1)
x=rnorm(100)
y=2*x+rnorm(100)
fit1=lm(y~x)
fit2=lm(x~y)
summary(fit1)
summary(fit2)

# 13)
# c) 100, Beta0=-1, Beta=0.5
set.seed(1)
x=rnorm(100)
eps=rnorm(100, 0, 0.25)
y=-1+0.5*x+eps
fit=lm(y~x)
summary(fit)

plot(x, y)
confint(fit)
abline(fit, col="red")

fit2=lm(y~x+poly(x,2))
abline(fit2, col="blue")
summary(fit2)

# 14
# a)
set.seed(1)
x1=runif(100)
x2=0.5*x1+rnorm(100)/10
y=2+2*x1+0.3*x2+rnorm(100)
fit=lm(y~x1+x2)
summary(fit)
plot(x1, x2)
summary(fit)
confint(fit)

fit2=lm(y~x1)
summary(fit2)

fit3=lm(y~x2)
summary(fit3)

x1=c(x1, 0.1)
x2=c(x2, 0.8)
y=c(y, 6)
fit4 = lm(y~x1+x2)
summary(fit4)
