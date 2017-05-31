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
seq(from=-pi, to=pi, length.out = 50)
