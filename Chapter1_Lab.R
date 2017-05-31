x <- c(1,6,2)
y <- c(1,4,3)
length("helo")
nchar("he")
lengths(c("sds", "sdsd"))
x+y
ls()
rm(x)
ls()
rm(y)
ls()
?matrix

mdat <- matrix(c(1,4,2,5,3,6), nrow=2, ncol=3)
mdat
sqrt(mdat)
?rnorm
x <- rnorm(50)
y <- x + rnorm(50, mean=50, sd = 0.1)
?cor
cor(x, y)

set.seed(3)
z = rnorm(100)
mean(z)
var(z)
sqrt(var(z))
sd(z)

?plot
x=rnorm(50)
y=rnorm(50)
plot(x,y, main="Plot of X vs Y", xlab = "X", ylab = "Y", type = "h")

?seq
seq(from=1, to=10, by=0.2)
seq(from=1, to=10, length.out = 100)
x=seq(from=-pi, to=pi, length.out = 50)
y=x
?outer
outer(x,y)
x
length(x)
dim(outer(x,y))
f=outer(x,y,function (x,y)cos(y)/(1+x^2))
f
contour(x, y, f)
contour(x, y, f, nlevels = 45, add = T)
?contour
image(x,y,f)
persp(x,y,f,theta=30, phi=330)

setwd()
Auto <- read.table("Auto.data", header = T, na.strings = "?")
dim(Auto)
fix(Auto)
Auto <- na.omit(Auto)
dim(Auto)
names(Auto)
rm(Autp)
summary(Auto)
string(Auto)
fix(Auto)

attach(Auto)
plot(cylinders, mpg)
cylinders <- as.factor(cylinders)
summary(Auto)
plot(Auto$cylinders, mpg)
plot(cylinders, mpg, col="red", varwidth="T")
?plot

hist(mpg)
hist(mpg, breaks = 10)

Auto$cylinders <- as.factor(Auto$cylinders)
pairs(Auto)
pairs(~mpg + displacement + horsepower + weight + acceleration, Auto)

attach(Auto)
plot(horsepower, mpg)
identify(horsepower, mpg, name)
