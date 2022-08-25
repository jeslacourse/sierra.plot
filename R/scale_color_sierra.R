#' Sierra color scales
#'
#' Color scales using the Sierra College secondary colors
#' @inheritParams ggplot2::scale_color_hue
#' @family color
#' @rdname scale_sierra
#' @seealso \code{\link{theme_sierra}()} for examples.
#' @export
scale_color_sierra <- function(...) {
  discrete_scale("color", "sierra", sierra_ext_pal(...))
}

#' If anyone chooses to call the English 'colour', run the same method
#' @rdname scale_sierra
#' @export
scale_colour_sierra <- scale_color_sierra

#' Use these colors for fills
#' @rdname scale_sierra
#' @export
scale_fill_sierra <- function(...) {
   r <- discrete_scale("fill", "sierra", sierra_ext_pal(...))
   r
   # Todo: Pull n_val variable related to number of fill categories
   #       and push that to the palette.
   #r$data %>% select(str_replace_all(
   #  quo_name(r$mapping$fill), "[factor//(//)]", "")) %>% n_distinct -> s
   #assign("r", r, envir = .GlobalEnv)
}

