
library(jsonlite)
MechaCar_df<-read.csv('MechaCar_mpg.csv',header=TRUE, sep=',',check.names=F,stringsAsFactors =F )
MechaCar_df
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df))
library(tidyverse)
library(dplyr)
?summarize()
suspension_table %>%
  group_by(Manufacturing_Lot) %>%
  summarize(mean = mean(PSI))
Sum<-MechaCar_df
suspension_table<-read.csv('Suspension_Coil.csv',check.names=F,stringsAsFactors =F )
head(suspension_table)
suspension_table %>%
  group_by(PSI) %>%
  summarize(mean = mean(PSI))

summary<-suspension_table %>%
  summarize(mean = mean(PSI), Median = median(PSI), Variance =var(PSI), SD = sd(PSI) ) 
?data.frame()  
total_summary<-data.frame(
  summary
)

lot<-suspension_table %>%
  group_by(Manufacturing_Lot) %>%
  summarize(mean = mean(PSI),Median = median(PSI), Variance =var(PSI), SD = sd(PSI))

lot_summary<-data.frame(
  lot
)
?t.test()
?subset
t.test(total_summary,mu=1500)
Lot1<-subset(suspension_table,Manufacturing_Lot=="Lot1")
t.test(Lot1$PSI,mu=1500)
Lot2<-subset(suspension_table,Manufacturing_Lot=="Lot2")
t.test(Lot2$PSI,mu=1500)
Lot3<-subset(suspension_table,Manufacturing_Lot=="Lot3")
t.test(Lot3$PSI,mu=1500)



