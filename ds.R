# Data structures in R

#Vectors----
x=1:10          #create a vector: sequence of numbers from 1 to 10
x               #print the data
x1 <- 1:20      # <- : older way to represnt sequence of datas
x1

(x1=1:30)     #create a sequnce and print
(x2=c(1,2,13,4,5))# c: concatenate and create a vector out of it
class(x2)        # class: type of vector

(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b = c('a',"Dhiraj","4"))
?c                #help on a function
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
(class(x4))

x5=c(3L,5L)    #for integer type put L
class(x5)

(x5b = c(1,'a',T,4L))   #when there are mix of type of vectors, it will always show characters
class(x5b)

#access elements

(x6 = seq(0,100, by=3))
methods(class='numeric') # 
?seq

ls()   #variables in my environment
x6
length(x6)
x6[20]
x6      #access 3rd element

x6[c(2,4)]    #access 2nd and 4th element
x6[-1]        #access all but 1st element

x6[-c(1:10)]   #remove 10 elements
x6[c(2, -4)]    #cannot mix positive and negative integers

#Error in x6[c(2, -4)] : only 0's may be mixed with negative subscripts
x6[c(2.4, 3.54)]    #real number are truncated to integers
x6[-c(1,5,20)]

x6[-(length(x6)-1)]
(x7 = c(x6,x2))

#modify

sort(x6)
sort(x6[-c(1,2)])  #remove first two elements and sort
sort(x6, decreasing=T)
rev(x6)    #reversing the position

seq(-3,10, by=.2)
(x = -3:2)
x[2] <- 0; x    #modify 2nd element
x
x < 0
x[x<0] = 5; x    #replace the elements which are less than 0 with 5
x(x<0) = 5; x    #will not work for normal brackets

x < 0
x[x<= 1 & x>= -1] = 100; x   #modify elements less than 0

x = x[1:4]; x  #trunacte x to first 4 elements

#delete vector
(x = seq(1,5, length.out = 15))
x= NULL
x

(x = rnorm(100))   #normal distribution mean of 0 and sd of 1
plot(density(x))
(x1 = rnorm(1000, mean=50, sd=5))
plot(density(x1))
mean(x1)
abline(v=mean(x1))
abline(v=mean(x1), h=0.04)



#Matrices----

100:111
(m1 = matrix(1:12, nrow=4))
(m2 = matrix(1:12, ncol=3, byrow=T))  #to fill the data by row (by deafult it fills by column)

x=101:124
length(x)
matrix(x, ncol=6)
class(m1)
attributes(m1)
dim(m1)
m1

#access elements of matrix
m1[1,2:3]
m1[c(1,3),]
m1[2:3,1]
m1[,-c(1,3)]

#names of cols and rows
m1

paste("C","D",sep="=")
paste("C",1:100,sep="-")

(colnames(m1) = paste('C', 1:3, sep=''))
m1
(row)





#vector to matrix
(m3 = 1:24)
 

m2[c(TRUE,F,T,F), c(2,3)]
m2

rbind(m2, c(1,2,3))       #temporary addition of row
cbind(m2, c(2,3,4,5))
rbind(m2,m2)
m2

#row and col wise summary
m1
colSums(m1); rowSums(m1)
colMeans(m1); rowMeans(m1)

t(m1)    # transpose
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+" )   #rowwise
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*" ) #colwise

#addmargins

m1
addmargins(m1,margin=1,sum)  #col wise function
addmargins(m1,1,sd)     #colwise function

addmargins(m1,2,mean)  #rowwise
addmargins(m1,c(1,2),mean)  #row & col wise function

addmargins(m1,c(1,2), list(list(mean, sum, max), list(var, sd))) #row & col

#Arrays----



#Data Frame----

(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(rnorm(30,mean= 50, sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size=30, replace=T, prob=c(.5,.5)))
rollno; sname; gender
marks; marks2; course

#create df
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
str(df1)   #structure of df
head((df1)) #top 6 rows
head(df1, n=3) #top 3 rows
tail(df1)
class(df1)
summary(df1)
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)


#Factors----

#Lists----

































#dplyr - mtcars
library(dplyr)
library(tidyverse)
