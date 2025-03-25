#teoria

# Binomial []


# dbinom(casos favorables, casos totales, probabilidad de caso favorable)
# pbinom(x,n,p)    Acumulacion

# Binomial negativa: 
# paro cuando x personas me den el caso favorable y cuento los casos
# desfavorables 
# dnbinom()
# pnbinom()

# Poisson
# dpois(x,lambda) = [P(X=x)]                 [f(x)]
# ppois(x,lambda) = [P(X<=x)] acumulada      [F(x)]
# qpois(0.25, lambda)                        [F^-1(x=0.25,0.5,0.75...)]



# Ejercicios de modelos de probabilidad
# 1) Identificar el modelo
# 2) Identificar los parametros
# 3) Probabilidad (valor esperado)


# Problema 1

#lambda = 25 llamadas/1 hora
# P(X=10): Probabilidad de recibir 10 llamadas en un hora
# dpois(10 llamadas en una hora, espero 25 llamadas en una hora)
dpois(10,25)

#graficar
x <- 0:50
fx <- dpois(x,25)
plot(x, fx, pch=16, col="red")
lines(x, fx, type="h", col="red")

# probabilidad de 30 llamadas
dpois(30,25)

# como mucho 30 llamadas en 1 hora [P(X<=30) = F(30)]
ppois(30,25)

# menos de 30 llamadas en 1 hora [P(X<30) = P(X<=29) = F(29)]
ppois(29,25)

# como minimo 30 llamadas en 1 hora [P(X>=30)= 1-P(X<30)= 1-P(X<=29) =1-F(29)]
1-ppois(29,25)


#graficar funcion de distribucion
Fx <- ppois(x,25)
plot(x, Fx, type="s", )

#primer cuartil
qpois(0.25, 25)


# a)
# dexp(x, lambda)    ESTO No
dexp(0.033,25)

x <- seq(0, 0.20, 0.001)
fx <- dexp(x, 25)
plot(x, fx, type="l", col="red")

# a) variable continua => P(T=0.033) = 0

# b) P(T>0.052) = 1 - P(T<=0.052) = 1-F(0.052) [en variable continua <= = <]
1-pexp(0.052, 25)

Fx <- pexp(x, 25)
plot(x, Fx, type="l", col="red")

# simular un tiempo de espera entre dos llamadas
set.seed(123)
rexp(10, 25)
















