#plot a binomial dist.
n <- 10     # number of trials
p <- 0.3    # prob of success
x <- 0:n
y <- c(dbinom(x,n,p))
barplot(y~x)
y[k +1] # pdf at value k

#plot a geometric dist.
n <- 10     # max value taken
p <- 0.3    # prob of success
x <- 0:n    # note that unlike the lecture notes, R uses k=0,1,2,.. not k=1,2,...
y <- c(dgeom(x,p))
barplot(y~x)
y[k +1] # pdf at value k

#plot a hyper geo dist.
n <- 10     # total objects available
m <- 5      # total successes available
l <- 8      # total selected
x <- 0:l
y <- c(dhyper(x,m,n-m,l))
barplot(y~x,xlab="k",ylab="P(X=k)")
y[k +1] # pdf at value k, the number of successes selected

#plot a neg binomial dist. OR geo dist. where r=1
n <- 50     # max value taken
r <- 1      # successes required for termination
p <- 0.5    # prob of success
x <- 0:n
y <- c(dnbinom(x,r,p))
barplot(y~x)
y[k +1] # pdf at the kth trial

#custom discrete dist.
x <- 1:7
y <- c(rep(c(0.10,0.25), times=c(5,2))) #repeat 0.10 five times, then repeat 0.25 twice
barplot(y~x)
y[k +1] # pdf at value k

#wave plot
x <- seq(0,2*2*pi,0.1) # first, last, interval
y <- sin(x) # function
plot(x,y)
y[k +1] # pdf at value k


