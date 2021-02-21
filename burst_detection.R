#Burst detection

library(aRxiv)
library(bursts)

data <- arxiv_search('abs:"burst detection"', limit=1000)

bursts <- kleinberg(as.POSIXct(data$submitted))

#accumulation of submissions

plot(as.POSIXct(data$submitted),1:length(as.POSIXct(data$submitted)),
     xlab='Time', ylab='Submissions')

#bursts in submissions
plot(bursts, xaxt = 'n')
axis.POSIXct(1, bursts$start)
