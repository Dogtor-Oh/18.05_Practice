#R_Tutorial - Edited on Feb 18, 2023; By OH

# Vectors & Matrices # 
# Basic Operations (+,-,*,/,^)
2+3
2*3
2/3
2^3
2*(3+1)^2

# Using Variables
x <- 2+3
y <- 5
x*y

# Vectors ....................[1]  
c(1, 2, 3, 4)
x <- c(1,2,3,4)
1:4
3:10
9:2
x <- 1:40
x

# Vector Arithmetic
x <- c(1, 3, 5)
x + 7
x * 7
y <- c(2, 6, 9)
x-y
z <- x*y
z

# Accessing entries in a vector 
x <- c (2, 4, 6, 8, 10)
x[1]
x[2] 
x[1:3]
x[c(3,2,1)]

# Functions in a vector
sin(1) 
pi
exp(1)
x <- exp(1:2)
sum (x)
mean (x)

# Matrices ....................[2]
x <- 1:10
y <- matrix (x, nrow = 2, ncol = 5)
y
z <- matrix (x, nrow = 5, ncol = 2)
z
w <- matrix (x, nrow = 2, ncol = 5, byrow = TRUE)
w

# Assessing entries in Matrices 
y[1,1]
y[2,3]
y[,2]

# Sums and Means on Matrices 
rowSums(y)
colSums(y)
rowMeans(y)
colMeans(y)

# Random Trials # 
# Random Numbers ....................[3] 

