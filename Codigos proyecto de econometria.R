
library(dplyr)
library(tidyverse)
library(haven)
install.packages("marginaleffects")
library(marginaleffects)


help(filter)



Base_de_datos_mujeres<- Base_de_datos_Casen_2022_STATA_18_marzo_2024 %>% filter(sexo == 2 & edad > 17 )




Base_de_datos_mujeres$r1a_dummy<- ifelse(Base_de_datos_mujeres$r1a == 3, 0, 1)
Base_de_datos_mujeres$o1 <- ifelse(Base_de_datos_mujeres$o1 == 2, 0, 1)
Base_de_datos_mujeres$region<-as.factor(Base_de_datos_mujeres$region)
Base_de_datos_mujeres$region <- relevel(Base_de_datos_mujeres$region, ref = "13")
Base_de_datos_mujeres$edad_squared <- (Base_de_datos_mujeres$edad)^2
Base_de_datos_mujeres$ecivil<- ifelse(Base_de_datos_mujeres$ecivil == 1, 1, 0)
Base_de_datos_mujeres<-subset(Base_de_datos_mujeres, select=c( ecivil, edad, edad_squared, r1a_dummy, e6a, region, o1, tot_per_h))


Modelo <- glm(o1 ~ ecivil + edad + edad_squared + r1a_dummy + e6a + region + tot_per_h, family = binomial("logit"), data = Base_de_datos_mujeres)


summary(Modelo)


