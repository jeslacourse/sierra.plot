#' Sierra College Inspired Theme
#'
#' For GGPlotting in R
#' \href{https://www.sierracollege.edu/assets/docs/marketing/branding-logos/sierra%20brand%20guidelines%201-17.pdf}{Sierra College Branding}
#'
#' @family theme
#'
#' @import ggplot2
#' @import tidyverse
#' @import here
#' @import yaml
#' @importFrom purrr map
#' @importFrom grid unit
#' @importFrom tibble deframe
#'
#' @export
#'
#' @example inst/ex-theme_sierra.R

#'
theme_sierra <- function(){
  colors <- deframe(map(
    list(
    primary = list(
      list(name = 'True Black', value = '#000000'),
      list(name = 'Cardinal Red', value = '#AF2124'),
      list(name = 'White', value = '#FFFFFF'),
      list(name = 'Cool Gray', value = '#9D9D9D')
    ),
    secondary = list(
      list(name = 'Mountain Blue', value = '#4782A8'),
      list(name = 'Nature Green', value = '#7EAE5A'),
      list(name = 'Pistache Orange', value = '#DF8A3C'),
      list(name = 'Poppy Yellow', value = '#F2C23E'),
      list(name = 'Twilight Purple', value = '#3F2A56')
    ),
    neutral = list(
      list(name = 'Acorn Brown', value = '#7B6348'),
      list(name = 'Wolverine Tan', value = '#ECDEC1'),
      list(name = 'Granite Gray', value = '#616061')
    )
  ),
  ~ map_dfr(., as_tibble)
  )[['primary']])

  # Setup theme
  (theme_bw(base_size = 12, base_family = "sans") +
   # https://data-se.netlify.app/2018/12/12/changing-the-default-color-scheme-in-ggplot2/
   #scale_fill_sierra() +
   #scale_color_sierra() +
    theme(
      # All element lines in graphic
      line = element_line(color = colors["Cool Gray"]),
      # Border and background elements
      rect = element_rect(linetype = 0, colour = NA),
      text = element_text(colour = colors["True Black"]),

      # Remove axis titles, text, ticks, and lines
      axis.title = element_blank(),
      axis.text = element_text(),
      axis.ticks = element_blank(),
      axis.line = element_line(),

      # Have the legend mimic the rest of the plot, show on bottom
      legend.background = element_rect(),
      legend.position = "bottom",
      legend.direction = "horizontal",
      legend.box = "vertical",

      # Panel is the space a graph is plotted on, plotted background
      panel.grid = element_line(colour = NULL),
      panel.grid.major =
        element_line(colour = colors["Cool Gray"], linetype = "dotted"),
      panel.grid.minor = element_blank(),

      # Make the title bold, adjust whitespace around grid
      plot.title = element_text(hjust = 0, size = rel(1.1), face = "bold"),
      plot.title.position = "plot",
      plot.caption = element_text(hjust = 0, face= "italic"),
      plot.margin = unit(c(1, 1, 1, 1), "lines"),
      strip.background = element_rect())

    )


}
