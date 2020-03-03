# Q6 : X~Exp(0.2) and Y~Exp(0.25)

# a) P(X>3) = 1- P(X<=3)
1-pexp(3,0.2)

# b) P(Y<4) = P(Y<=4)
pexp(4,0.25)

# c) P(Y<2 or X<2) => Z~Exp(0.2 + 0.25)
pexp(2,0.45)


# Q7 : X~Norm(mean=125,sd=24

# a) P(X<100)
pnorm(100,125,24)

# b) P(X>140) = 1 - P(X<140)
1-pnorm(140,125,24)

# c) P(110<X<130)
pnorm(130,125,24)-pnorm(110,125,24)

# d) why would X>200 be unusual?
1-pnorm(200,125,24)
# returns 0.09%, so highly improbable


# Q8 : adding exponential random variables

