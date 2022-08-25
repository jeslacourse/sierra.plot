#' Sierra College Inspired Theme
#'
#' For GGPlotting in R
#' \href{https://www.sierracollege.edu/assets/docs/marketing/branding-logos/sierra%20brand%20guidelines%201-17.pdf}{Sierra College Branding}
#'
#' @inheritParams ggplot2::theme_minimal
#' @family theme
#'
#' @import tidyverse
#' @import ggplot2
#'
#' @export
#'
#' @example inst/ex-theme_sierra_simple.R
#' @importFrom grid unit
#'
theme_sierra_simple <- function(base_size = 11, base_family = "sans"){
  # Setup theme
  (theme_minimal(base_size = base_size, base_family = base_family) +
      theme(
            legend.background = element_blank(),
            legend.key = element_blank(),
            legend.position = "bottom",

            panel.border = element_blank(),
            panel.grid = element_blank(),
            panel.background = element_blank(),
            strip.background = element_blank(),
            plot.background = element_blank(),

            axis.line = element_line(),

            plot.title = element_text(hjust = 0, size = rel(1.1), face = "bold"),
            plot.title.position = "plot"
          )
  )
}
