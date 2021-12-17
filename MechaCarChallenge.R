# Deliverable 1
library(dplyr)
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar)

MechaCar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar)
summary(MechaCar_lm)

# Deliverable 2
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(Suspension_Coil)

total_summary <- Suspension_Coil %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Deliverable 3
t.test(Suspension_Coil$PSI,mu=1500)

Lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)