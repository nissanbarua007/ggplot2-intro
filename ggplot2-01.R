library(tidyverse)
library(ggplot2)

data(BOD)
View(BOD)

ggplot(data = BOD,
       mapping = aes(x = Time,
                     y = demand))+
  geom_point(size = 5)+
  geom_line(colour = "red")

data()

View(CO2)

CO2 %>%
  ggplot(aes(conc, uptake,
             colour = Treatment))+
  geom_point(size = 3, alpha = 0.5)+
  geom_smooth(method = lm, se = F)+
  facet_wrap(~Type)+
  labs(title = "Concentration of CO2")+
  theme_bw()

CO2 %>%
  ggplot(aes(Treatment, uptake))+
  geom_boxplot()+
  geom_point(alpha = 0.5, 
             aes(size = conc, 
                 colour = plant))+
  facet_wrap(~Type)+
  coord_flip()+
  theme_bw()+
  labs(title = "Chilled vs Non-chilled")


View(mpg)

mpg %>%
  filter(cty < 25) %>%
  ggplot(aes(displ, cty))+
  geom_point(aes(colour = drv,
                 size = trans),
             alpha = 0.5)+
  geom_smooth()+
  facet_wrap(~year, nrow = 1)=
  labs(x = "Engine Size",
       y = "MPG in the city",
       title = "Fuel Efficiency")+
  theme_bw()


