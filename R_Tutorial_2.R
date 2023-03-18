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
