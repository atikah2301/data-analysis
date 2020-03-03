# Q9 : Poisson dist. and normal approx.

# a) lambda = 5, then E(x)=5 and SD=sqrt(5)
l <- 5
n <- 12

xp <- 0:n
yp <- dpois(xp,l)
plot(xp,yp,type="p")

xn <- seq(0,n,0.02)
yn <- dnorm(xn,l,sqrt(l))
lines(xn,yn)

# b) lambda = 20
l <- 20
n <- 40

xp <- 0:n
yp <- dpois(xp,l)
plot(xp,yp,type="p")

xn <- seq(0,n,0.02)
yn <- dnorm(xn,l,sqrt(l))
lines(xn,yn)

# c) lambda = 80
l <- 80
n <- 150

xp <- 0:n
yp <- dpois(xp,l)
plot(xp,yp,type="p")

xn <- seq(0,n,0.02)
yn <- dnorm(xn,l,sqrt(l))
lines(xn,yn)
# In conclusion, as lambda increases, the accuracy of the approximation increases too



# Q10 : Hypergeometric dist. and normal approx.

# a) plot comparison 
n <- 1500     # total objects available
m <- 500      # total successes available
l <- 100      # total selected
x <- 0:l
y <- c(dhyper(x,m,n-m,l))
plot(x,y,type="p")

mu <- l*m/n
sd <- sqrt(l*m/n*(n-m)/n*(n-l)/(n-1))
xn <-seq(0,100,0.01)
yn <-dnorm(xn,mu,sd)
lines(xn,yn,type="l")

# b) apply continuity correction, then calculate difference in pmfs, and plot the error, find max error
h <- dhyper(0:100,m,n-m,l)
a <- pnorm(0:100+1/2,mu,sd)
b <- pnorm(0:100-1/2,mu,sd)

err<- h-(a-b)
plot(0:100,err,type="p")

max(abs(err))



# Q11 : Geometric Dist. and Normal Approx.

# X = T1 + T2 + ... + T19
# a) E(T) = 4.2 ; Var(T) = E(T)^2 - E(T) = 4.2^2 - 4.2 = 13.44
# E(X) = 4.2 * 19 = 79.8 min
# Var(X) = 13.44 * 19 = 255.36

# b) "arrival of 20 buses" => X ; "more than two hours" => X > 120
# Normal Approx w continuity correction: P(X>120) = approx 1 - P(<=120 + 0.5) = 1 - P((Z<120+0.5 - E(X))/sqrt(Var(X)))
1-pnorm((120.5-79.8)/sqrt(255.36))




