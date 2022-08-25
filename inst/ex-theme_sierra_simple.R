library(tidyverse)
library(sierra.plot)

# Simple Plot, no color, fill, or groups to show base theme
ggplot(mtcars, aes(x= cyl, y= mpg)) +
  geom_point() +
  theme_sierra_simple()

# Bar plot with fill, using Sierra colors
ggplot(mtcars, aes(y= fct_rev(factor(cyl)))) +
  geom_bar(stat = "count") +
  theme_sierra_simple() +
  labs(title = "Count of Cars by Number of Cylinders",
       caption = "Source: Motor Trend Car Road Tests",
       fill = "Automatic Transmission:") +
  scale_fill_sierra(name ="greenBlue", n=3, reverse= TRUE)

# Line plot with Sierra colored lines
ggplot(mtcars, aes(x= wt, y = mpg, color = factor(cyl), group = cyl)) +
  geom_line(size = 2) +
  scale_color_sierra(name = 'greens', n=4, reverse= TRUE) +
  theme_sierra_simple()
