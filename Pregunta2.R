# pregunta 2
# a)
# E(X) = 1/lambda
1 - pexp(13000, 1/10000)

# b)  [F8x)=0.8=> F^-1(0.8)=x]
qexp(0.8, 1/10000)

#c, d, e)
set.seed(85)
simul <- rexp(100, 1/10000)

mean(simul)
median(simul)
var(simul)
