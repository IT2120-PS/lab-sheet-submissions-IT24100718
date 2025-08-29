setwd("C:\\Users\\it24100718\\Desktop\\IT24100718")
getwd()
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep=",")
print(Delivery_Times)

hist(Delivery_Times$Delivery_Time,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency",
     breaks=seq(20, 70, by=5),  
     right=TRUE)

# The distribution appears to be right-skewed, with the majority of delivery times
# clustered between 20 and 40 minutes.

cum_freq <- cumsum(table(cut(Delivery_Times$Delivery_Time, breaks=seq(20, 70, by=5), right = TRUE)))
plot(seq(20, 65, by=5), cum_freq, type='o',
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab="Delivery Time (minutes)",
     ylab="Cumulative Frequency",
     ylim=c(0, max(cum_freq)),
     pch=16)
