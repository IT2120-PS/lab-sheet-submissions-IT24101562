setwd("C:\\Users\\ASUS TUF\\OneDrive - Sri Lanka Institute of Information Technology\\sliit\\Modules\\Y2 S1\\PS\\Lab8\\Lab 08-20250925")
#Importing the data set
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

#Q1
#Commands "mean" & "var" will compute the mean and variance for data.
popmn<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)

#Q2
#First create null vectors to store sample data sets.
samples<-c()
n<-c()
for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
#Assign column names for each sample created. Names have stored earlier under "n" variable
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

#Q3
#calculate mean and standard deviation of sample means stored in "s.means" variable.
samplemean<-mean(s.means)
samplesd<-sd(s.means)

#state the relationship of them with true mean and true standard deviation
truemn=popmn/6
truesd=popsd/6
