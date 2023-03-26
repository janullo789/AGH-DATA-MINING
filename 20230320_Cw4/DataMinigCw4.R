library("ggplot2")
library(dplyr)

boxplot(wastewaterFix$a_Sandomierz)
hist(wastewaterFix$a_Sandomierz)
plot(wastewaterFix$X,wastewaterFix$a_Sandomierz,type="l")

wastewaterFix = wastewater%>%
  mutate(a_Sandomierz=ifelse(Sandomierz>0 & Sandomierz<=20, Sandomierz, NA))

ekstrema_plus = mean(wastewaterFix$a_Sandomierz, na.rm=TRUE) + 3 * sd(wastewaterFix$a_Sandomierz,na.rm=TRUE)
ekstrema_minus = mean(wastewaterFix$a_Sandomierz, na.rm=TRUE) - 3 * sd(wastewaterFix$a_Sandomierz,na.rm=TRUE)

b_Sandomierz = wastewaterFix %>% 
  mutate(a_Sandomierz=ifelse(a_Sandomierz<=ekstrema_plus & a_Sandomierz>ekstrema_minus, a_Sandomierz, NA))

boxplot(b_Sandomierz$a_Sandomierz)
hist(b_Sandomierz$a_Sandomierz)
plot(b_Sandomierz$a_Sandomierz,type="l")

ts_wwtp<-ts(b_Sandomierz$a_Sandomierz,start=c(2002,1),end=c(2007,6),frequency=12)
ts_wwtp

library(forcast)
library(zoo)

Acf(ts_wwtp, type="partial")

na.approx()


