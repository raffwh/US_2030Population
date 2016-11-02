#### VISUALIZATION FOR US CENSUS PREDICTION FOR 2030-2060

## LIBRARY LOAD
library(dplyr)
library(ggplot2)
library(reshape2)
library(tidyr)
##



## DATA LOAD
censusall = read.csv("c1.csv", header=FALSE, stringsAsFactors=FALSE)

# -- ADDING HEADERS AND ROWNAMES DUE TO EXCEL ISSUE
colhead = c('y2015' , 'y2020','y2025','y2030','y2035','y2040','y2045','y2050','y2055','y2060')
order1<- factor(colhead, levels=c('y2015' , 'y2020','y2025','y2030','y2035','y2040','y2045','y2050','y2055','y2060'), ordered=TRUE)
order1
names(censusall) = order1


###########

agegroup = c('00-04','05-09','10-14','15-19','20-24','25-29','30-34','35-39','40-44','45-49','50-54','55-59','60-64','65-69','70-74','75-79','80-84','85-89','90-94','95-99','100above')
order2 <- factor(agegroup, levels=c('00-04','05-09','10-14','15-19','20-24','25-29','30-34','35-39','40-44','45-49','50-54','55-59','60-64','65-69','70-74','75-79','80-84','85-89','90-94','95-99','100above'), ordered =TRUE)

censusall= data.frame(order2, censusall)


names(censusall) [1] = "age"

####UNFINSIHED####
####changing data into  3 groups####

cgroup = data.frame(cgroup)
cgroupa = subset(cgroupa.df, variable=c("2000","2005","2010","2015"))

max_y_cgroup = max(cgroup$total)


ggplot(data=cgroup, aes(x=variable, y=total, group=ageg, colour=ageg, shape=ageg))  + geom_line() + geom_point()+ scale_y_continuous(breaks=round(seq(0,max_y_cgroup, by=500000),1))


options(scipen=2)

ggplot(data=cgroup, aes(x=variable, y=total, group=ageg, colour=ageg))+geom_line()+scale_y_continuous(breaks=round(seq(0, max_y_cgroup, by=5e+07),1))+scale_x_continuous(breaks=c(2000,2005,2010,2015,2030,2045,2060))
