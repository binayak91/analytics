# xts  - create object and export data
library(xts)
#create matrix : 1 col for 1 share
(stockprices = matrix(c(100,103, 105, 205, 210, 207, 530, 500, 535), ncol=3, byrow = F))
(cdtindex = c('25-09-2018', '27-09-2018', '28-09-2018'))
#convert to date format
(dtindex = as.Date(cdtindex, format="%d-%m-%Y"))
#now we have index + matrix for xts object

(ts_xts = xts(x=stockprices, order.by=dtindex))
#this series is not continuous but has missing dates

#-----
#matrix data extract
coredata(ts_xts)
#extract dates
index(ts_xts)





#create 90 values of stocks 

(stockprices = matrix(c(rnorm(90,mean=50,sd=1)), ncol=3, byrow = F))
library(lubridate)
date = lubridate::ymd("20180901")
date
date1= date + 0:29
date1
(cdtindex = date1)
(ts_xts = xts(x=stockprices, order.by = cdtindex))
plot(ts_xts)
ts_xts
colnames(ts_xts) = c("SBI" , "ICICI" , "HDFC")
ts_xts


#write to csv file
write.zoo(ts_xts, "./data/zoodata.csv")
