#Problem 1
z <- qnorm(0.09)
z
#Problem 2
z <- qnorm(0.93)
z
#Problem 3
p <- 0.94 + (1 - 0.94) / 2  # Probability for one tail
z <- qnorm(p)
z
#Problem 4
p_upper <- 0.04  # Probability for upper tail
z_upper <- qnorm(p_upper)
z_upper
p_lower <- 0.04  # Probability for lower tail
z_lower <- qnorm(p_lower)
z_lower
#Problem 5
area <- pnorm(1.7)
area
#Problem 6
area <- 1 - pnorm(2.1)
area
#Problem 7
area <- pnorm(-1.7)
area
#Problem 8
area <- 1 - (pnorm(1.3) - pnorm(-1.3))
area
#Problem 9
df <- 15  
p <- 0.09  
t <- qt(p, df)
t
#Problem 10
df <- 15  
p <- 0.93 
t <- qt(p, df)
t_top <- -t 
t_top
#Problem 11
df <- 15  
p <- 0.97  
t <- qt(p/2, df)  # find t-value for bottom 3% (left tail)
t_middle <- -t  
t_middle
#Problem 12
df <- 15  
p <- 0.04  
t <- qt(p, df)
t_outer <- -t  
t_outer
#Problem 13
df <- 15  
t <- 1.7  
p <- pt(t, df, lower.tail = TRUE)  
p
#Problem 14
df <- 15  
t <- 2.1  
p <- pt(t, df, lower.tail = FALSE)  
p
#Problem 15
df <- 15  
t <- -1.7  
p <- pt(t, df, lower.tail = TRUE) 
p
#Problem 16
df <- 15  
t1 <- -1.3  
t2 <- 1.3 
p1 <- pt(t1, df, lower.tail = TRUE)  
p2 <- pt(t2, df, lower.tail = TRUE)  
p <- 1 - (p2 - p1)  
p
#Problem 17
df <- 1500  
p <- 0.09 
qt(p, df, lower.tail = TRUE) 
#Problem 18
df <- 1500 
t_value <- 2.1 
1 - pt(t_value, df, lower.tail = TRUE) 
#Problem 19
mean(R_hw1_dataset_17$`Temperature(F)`)
#Problem 20
first_20 <- head(R_hw1_dataset_17, 20)
sample_mean<-mean(first_20$`Temperature(F)`)
sample_mean
#Problem 21
conf_interval <- t.test(first_20$`Temperature(F)`)$conf.int
conf_interval
#Problem 22
sd_20<-sd(first_20$`Temperature(F)`)
SEM <- sd_20/sqrt(20)
z_score <- qnorm(0.995)
# Calculate the margin of error (ME)
ME <- z_score * SEM
CI <- c(sample_mean - ME, sample_mean + ME)
CI
#Problem 23
# Calculate the confidence interval
result <- t.test(first_20$`Temperature(F)`, conf.level = 0.9)
result$conf.int
#Problem 24
first_200 <- head(R_hw1_dataset_17, 200)
sample_mean<-mean(first_200$`Temperature(F)`)
sample_mean
#Problem 25
ans<-t.test(first_200$`Temperature(F)`, conf.level = 0.95)
ans

