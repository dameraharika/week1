#task 1 in vectors
u <- 4
v <- 8
print(u+v)
print(u-v)
print(u*v)
print(u/v)
print(u^v)

#task 2
u <- c(4, 5, 6)
v <- c(1, 2, 3)
print(u+v)
print(u-v)
print(u*v)
print(u/v)
print(u^v)

#task 3
u <- c(8, 9, 10)
v <- c(1, 2, 3)
w <- (2 * u + v) / 10
print(w)
w <- 2 * u
w <- w + v
w <- w / 10
print(w)

w <- (u + 0.5 * v) ^ 2
print(w)
w <- u + 0.5 * v
w <- w^2
print(w)

w <- (u + 2) * (u - 5) + v
print(w)
w <- u + 2
w <- w * (u - 5)
w <- w + v
print(w)

w <- (u + 2) / ((u - 5) * v)
print(w)
w <- u + 2
d <- (u - 5) * v
w <- w / d
print(w)

#task 4
w<- u + v
w <- w / 2
w <- w + u
print(w)
w <- ((u + v) / 2) + u
print(w)

w1 <- u^3
w2 <- u - v
w <- w1 / w2
print(w)
w <- u^3 / (u - v)
print(w)