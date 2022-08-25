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

Call `scale_color_sierra()` or `scale_fill_sierra()` to use the color palettes. These will work with any discrete scale, just set parameter `n` to (at least) the number of factors you're visualizing. 

```
ggplot(mtcars, aes(y= cyl, fill = factor(am))) +
  geom_bar(stat = "count") +
  labs(title = "Count of Cars by Number of Cylinders",
       caption = "Source: Motor Trend Car Road Tests",
       fill = "Automatic Transmission:") +
  scale_fill_sierra(name ="greenBlue", n=3, reverse= TRUE) +
  theme_sierra()
```

## Sierra Color Palettes

I wanted to implement gradients that would be more user-friendly for folks that can't see the full color spectrum. What you'll find in my palettes is a lot of options that move from light to dark gradients. 

The default palette is `spectral`. To change the palette, use the parameter `name`. There's an example of this in the sample code above. 

Other options include: `reds`, `oranges`, `orangeYellow`, `yellows`, `greens`, `greenBlue`, `blues`, `bluePurple`, `purples`, `grays`, `lights`, and `darks`, and `long`. The palette `long` is useful if you're working with 20-50 factors. 

## Creating Your Own 

I recommend diving into the documentation for [ggtheme](https://ggplot2.tidyverse.org/reference/ggtheme.html) and the [`theme()`](https://ggplot2.tidyverse.org/reference/theme.html) function itself to get a feel for what you're looking for as a base theme. My code is stored under `\R\theme_sierra.R` and `\R\theme_sierra_simple.R` if you want to get a feel for mixing a base `ggtheme()` with `theme()` tweaks. 

I'd recommend seeking out your college's branding guidelines for base colors. From there, I used hue and saturation tools to pull lighter and darker shades of those colors. This is an extra step but I found it made for smoother color transitions. The color palette functions can be found in `\R\sierra_ext_pal.R`.

Happy coding! 
Jes 
