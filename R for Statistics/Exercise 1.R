# Q1 : X is a discrete RV, red = success, blue = failure

# a) produce the point plot and find that max i.e mode = 2
n <- 30     # total objects available
m <- 10      # total successes available
l <- 5      # total selected
x <- 0:l
y <- c(dhyper(x,m,n-m,l))
plot(x,y, type="p", xlab="k", ylab="P(X=k)")
y[0 +1: 5 +1] # pdf at value k

# b) produce the bar plot
n <- 30     # total objects available
m <- 10      # total successes available
l <- 5      # total selected
x <- 0:l
y <- c(dhyper(x,m,n-m,l))
barplot(y~x, xlab="k", ylab="P(X=k)")
y[0 +1: 5 +1] # pdf at value k

# c) same scenario but WITH replacement i.e binomially
n <- 5     # number of trials = number selected = l
p <- 10/30    # prob of success = possibls successes/ total successes = m/n
x <- 0:5
y <- c(dbinom(x,n,p))
barplot(y~x)
y[x +1] # pdf at value k
dbinom(0:5,5,1/3)
# multimodal at 1 AND 2 because P(X=1)=P(X=2)

# d) compute the DIFFERENCE between probs for WITH and WITHOUT replacement
dhyper(0:5,10,20,5) - dbinom(0:5,5,1/3)

# e) plot the comparison as bar carts AND as line charts side by side
x <- 0:5
y1 <- c(dhyper(0:5,10,20,5))
y2 <- c(dbinom(0:5,5,1/3))
barplot(cbind(y1,y2) ~ x, beside = TRUE)

x <- 0:5
y1 <- c(dhyper(0:5,10,20,5))
y2 <- c(dbinom(0:5,5,1/3))
plot(x,y1, type="p") #alternatively, type="l" for a line graph
lines(x,y2, type="p") #has type="l" by default. adds line over existing plot

# Q2 : Same task but with m=1000, n=3000, l=5

x <- 0:5
y1 <- c(dhyper(0:5,1000,2000,5))  #very large selection pool
y2 <- c(dbinom(0:5,5,1/3))        #binomial (with replacement)
y3 <- c(dhyper(0:5,10,20,5))      #original size selection pool
barplot(cbind(y1,y2,y3) ~ x, beside = TRUE)
#the comparison shows that for large values of n, the effect of replacement is minimal
#the probabilities produced by y1 and y2 are approximately equal