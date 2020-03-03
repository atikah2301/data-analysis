# Q3 : negative binomial, r=20, success is tossing heads on coin, p = 0.5 since fair coin

# a) compute pmf of X, the RV representing TOTAL TOSSES, not just FAILURES
# Y~NB(r,p) where Y is the RV representing FAILURES (tosses)
# hence X = Y + r (i.e. total tosses is tails tossed + heads tossed)
r <- 20       # successes required for termination
p <- 0.5      # prob of success
x <- 20:60    # obey that X >=20
y <- c(dnbinom(0:40,r,p))   
# however, the actual distribution's SHAPE is the SAME
# just shifted to the right by 20 i.e f(x)=g(x-20)
barplot(y~x)
# makes sense since mode is ~40, i.e. 20 heads + 20 tails (since p=0.5)

# b) compute E(X) i.e. expected number of total tosses
# E(X) = E(Y + r) = E(Y) + r = 40
((1-p)*r/p) + 20

# c) compute P(X>50 or X<30)
# = P(X>=51) + P(X<=29)
# = 1 - P(X<=50) + P(X<=29)
# = 1 - P(Y+20<=50) + P(Y+20<=29)
# = 1 - P(Y<=30) + P(Y<=9), now use the nbinom() function
1 - sum(c(dnbinom(0:30,20,0.5))) + sum(c(dnbinom(0:9,20,0.5))) 



# Q4 : library books n=10000, stats books m=100, p=m/n=0.01=1%, selection size l=150, k is stats books selected

# a) given WITH replacement, X~B(150,0.01)
barplot(dbinom(0:10, 150, 0.01)~seq(0,10,1))
# E(X) = l*p = 1.5
# Mode = 1 since P(X=1) is the maximum

# b) use poisson with lambda = np, plot comparison

x <- 0:10
y1 <- dbinom(0:10, 150, 0.01)
y2 <- dpois(0:10, 1.5)
barplot(cbind(y1,y2)~x, beside=TRUE)
# produces approximately the same values with similar dist.



# Q5 : X~Poisson(1.4 per min), compute hits over 5 minutes, so Y~Poisson(7 per 5 min)

# a) P(Y=7) 
dpois(7,7)

# b) P(Y<7) = P(Y<=6)
sum(dpois(0:6,7))

# c) P(Y>=7) = 1 - P(Y<7)
1-sum(dpois(0:6,7))

