a <- rnorm(50, 0, 1);a
b <- runif(50, -2,2);b

par(mfrow=c(1,2))
hist(a, main ='rnorm')
hist(b, main='runif')

group = c(rep(-1,50), rep(1,50));group

