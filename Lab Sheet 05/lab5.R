setwd("C:\\Users\\ASUS TUF\\OneDrive - Sri Lanka Institute of Information Technology\\sliit\\Modules\\Y2 S1\\PS\\lab5")
#import the data set 
delivery_times<-read.table("Exercise - Lab 05.txt",header =TRUE,sep=",")
fix(delivery_times)
print(delivery_times)

# a histogram for deliver times using nine class intervals where the lower limit
#is 20 and upper limit is 70
histogram<-hist.default(delivery_times$Delivery_Time_.minutes,main = "histrogram of delivery time", breaks =seq(20,70,length=10), xlab="delivery time(minutes)",ylab="frequency",right=FALSE)

freq <-histogram$counts
freq

cum_freq <-cumsum(freq)
cum_freq

breaks <- histogram$breaks
breaks

mids<-histogram$mids
mids

plot(mids,freq,type = "l" ,main="frequency polygon(ogive) of delivary times",,
     xlab="delivery Time(minutes)",
     ylab="cumulative frequency",
     col="red",
     pch=16)

new<-c()
for (i in 1: length (breaks)) {
  if(i==1) {
    new[i]=0
  }else{
    new[i]=cum_freq[i-1]
  }
}

plot(breaks, new, type="l", main = "Frequency polygon (ogive) of Delivery Times",
     xlab= "Delivery Time (minutes)",
     ylab="Cumulative Frequency",
     ylim=c(0, max (cum_freq)))

