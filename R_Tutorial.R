#R_Tutorial - Edited on Feb 18, 2023; By OH

# Vectors & Matrices # ....................[1]  
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

# Vectors
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

# Matrices
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

# Random Trials # ....................[2] 
# Random Permutation 
x <- 1:5
x
sample (x, 3) # sample 3 of the elements of x 
sample (x, 3, replace = TRUE) # sample 3 of the elements of x, w/ replacement
sample (x, 10, replace = TRUE)

x <- 1:6
y <- sample (x, 10, replace = TRUE) # roll a dice!
z <- matrix(y, nrow = 2, ncol= 5) # 2 rolls in 5 trials

x <- sample (1:6, 3, replace = TRUE)
x
x == 6
x < 6

x <- sample (1:6, 1000, replace = TRUE) 
sum (x == 6) # Is it 6?

x <- matrix(sample(1:6, 40, replace = TRUE), nrow = 4)
x
y <- (x == 6)
y
z <- colSums(y) # the number of trials yielded a 6!
z
mean(z)

x <- matrix(sample(1:6, 4*1000, replace = TRUE), nrow = 4) 
y <- x == 6 
z <- colSums(y)
mean(z)
sum(z > 0)/length(z) # rolling 4 dices, 1000 trials, at least one 6, prob

dim(y) # dimension 


x <- matrix(sample(1:6, 2*1000, replace = TRUE), nrow = 2)
y <- colSums(x) == 7 
mean(y)



#R_Tutorial_2 - Edited on Mar 18, 2023; By OH
# Tutorials for Loops 

# Making a sequence - rep() ....................[1] 
rep(0, 10)
rep(2, 6)
rep('abc', 5)
rep(1:4, 5)

# Function for loop - for(i in x) ....................[2] 
for (j in 1:5) 
{
  print(j^2)
}

n <- 5
x <- rep(0, n) # "make a sequence"
for (j in 1:n)
{
  x[j] <- j^2 # "and replace it with others"
}  
x 

n <- 100
x <- rep(0, n)
for (j in 1:n)
{
  x[j] <- j^2
}  
sum(x)

nsides <- 6
ntrials <- 1000
trials <- rep(0, ntrials)
for (j in 1:ntrials)
{
  trials[j] <- sample(1:nsides, 1)
}
mean(trials^2)

n <- 9
x <- 1:n
ntrials <- 10000
trials <- rep(0, ntrials)
for (j in 1:ntrials)
{
  y <- sample(x, n)
  s <- sum (y ==x) # s = number of people in their original seat 
  trials[j] <- (s == 0) # 1 if a derangement, 0 if not 
}  
mean(trials) # fraction that are 1's 

