# sierra.plot
Graphical Theming for Sierra Community College

This is a small package based off of ggplot's simpler themes `theme_bw()` and `theme_minimal()` with tweaks using `theme()` that best suit our needs in office. 

## Usage 

Call `theme_sierra()` or `theme_sierra_simple()` to customize a `ggplot()` object. 


```
library(tidyverse)
library(sierra.plot)

# Simple Plot, no color, fill, or groups to show base theme
ggplot(mtcars, aes(x= cyl, y= mpg)) +
  geom_point() +
  theme_sierra()
```

We've also implemented a custom color palette based on Sierra's primary and secondary colors. Titles, labeling, and other `ggplot` customizations can be added to figures just like you would for a base `ggobject`. 

Call `scale_color_sierra()` or `scale_fill_sierra()` to use the color palettes. 

```
ggplot(mtcars, aes(y= cyl, fill = factor(am))) +
  geom_bar(stat = "count") +
  labs(title = "Count of Cars by Number of Cylinders",
       caption = "Source: Motor Trend Car Road Tests",
       fill = "Automatic Transmission:") +
  scale_fill_sierra(name ="greenBlue", n=3, reverse= TRUE) +
  theme_sierra()
```
