#####################################
# Chapter 3

toastAngleData <- runif(1000,0,180) # Random numbers from uniform distribution
head(toastAngleData) # Look at the first few numbers in the list
tail(toastAngleData) # Look at the last few numbers in the list
hist(toastAngleData) # Plot a histogram of all 1000 data points

sample(toastAngleData,size=14,replace=TRUE)

mean(sample(toastAngleData,size=14,replace=TRUE))

replicate(4, mean(sample(toastAngleData,size=14,replace=TRUE)))

samplingDistribution <- replicate(10000,mean(sample(toastAngleData,size=14,replace=TRUE)))
#png("Figure03_1.png", width = 6, height = 6, units = 'in', res = 300)
hist(samplingDistribution, main=NULL)
#dev.off()

mean(samplingDistribution)
mean(toastAngleData)

summary(samplingDistribution)

quantile(samplingDistribution, c(.01, .05,  .50, .95, .99))

#png("Figure03_2.png", width = 6, height = 6, units = 'in', res = 300)
hist(samplingDistribution, main=NULL)
abline(v=quantile(samplingDistribution,.01))
abline(v=quantile(samplingDistribution,.05))
abline(v=quantile(samplingDistribution,.95))
abline(v=quantile(samplingDistribution,.99))
#dev.off()

samplingDistribution[ samplingDistribution<= quantile(samplingDistribution,.01) ]
summary( samplingDistribution[samplingDistribution <= quantile(samplingDistribution,.01)] )

