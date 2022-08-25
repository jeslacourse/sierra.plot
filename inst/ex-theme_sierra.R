library(tidyverse)
library(sierra.plot)

# Simple Plot, no color, fill, or groups to show base theme
ggplot(mtcars, aes(x= cyl, y= mpg)) +
  geom_point() +
  theme_sierra()

# Bar plot with fill, using Sierra colors
ggplot(mtcars, aes(y= cyl, fill = factor(am))) +
  geom_bar(stat = "count") +
  labs(title = "Count of Cars by Number of Cylinders",
       caption = "Source: Motor Trend Car Road Tests",
       fill = "Automatic Transmission:") +
       scale_fill_sierra(name ="greenBlue", n=3, reverse= TRUE) +
  theme_sierra()


# Line plot with Sierra colored lines
ggplot(mtcars, aes(x= wt, y = mpg, color = factor(cyl), group = cyl)) +
  geom_line(size = 1.5) +
  scale_color_sierra(n=5)+
  theme_sierra()



