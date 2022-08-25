#' Sierra color palette
#'
#' Sierra's secondary color palette for discrete plotting
#'

#' @family color sierra
#' @import scales
#' @import tidyverse
#' @importFrom grDevices colorRampPalette
#' @importFrom tibble deframe
#'
#' @param n number of colors
#' @param name name of palette
#' @param reverse reverse color palette
#'
#' @export
#' @example inst/ex-sierra_ext_pal.R
sierra_ext_pal <- function(name = "spectral", n=10, reverse = FALSE){
  colors <- tibble::deframe(map(
    list(
      primary = list(
        # Values Set with https://www.w3schools.com/colors/colors_picker.asp
        # HSL(Hue[Degrees], Saturation, Lightness)

        # Neutrals
        list(name = 'White', value = '#FFFFFF'),           #hsl(0, 0%, 100%)
        list(name = 'Granite Gray', value = '#616061'),
        list(name = 'True Black', value = '#000000'),
        list(name = 'Acorn Brown', value = '#7B6348'),
        list(name = 'Wolverine Tan', value = '#ECDEC1'),

        # -- Name (Luminosity [White Content]) ---
        #    Lighter values have higher luminosity

        # Cool Gray (62%)
        list(name = 'Cool Gray', value = '#9D9D9D'),    #hsl(0, 0%, 62%)
        list(name = 'Cool Gray50', value = '#808080'),  # 50
        list(name = 'Cool Gray25', value = '#bfbfbf'),  # 75

        # Cardinal Red (41%)
        list(name = 'Cardinal Red75', value = '#6b1416'),  # 25
        list(name = 'Cardinal Red', value = '#AF2124'),    # hsl(359, 68%, 41%)
        list(name = 'Cardinal Red50', value = '#d6292c'),  # 50
        list(name = 'Cardinal Red25', value = '#eb9495'),  # 75
        list(name = 'Cardinal Red15', value = '#f3bfc0'),  # 85

        # Pistache Orange (55%)
        list(name = 'Pistache Orange75', value = "#6e3e12"), # 25
        list(name = 'Pistache Orange50', value = "#db7c24"), # 50
        list(name = 'Pistache Orange', value = '#DF8A3C'),   # hsl(29, 72%, 55%)
        list(name = 'Pistache Orange25', value = "#edbe91"), # 75
        list(name = 'Pistache Orange15', value = "#f4d8bd"), # 85

        # Poppy Yellow (60%)
        list(name = 'Poppy Yellow75', value = '#775a08'),  # 25
        list(name = 'Poppy Yellow50', value = '#eeb311'),  # 50
        list(name = 'Poppy Yellow', value = '#F2C23E'),    # hsl(44, 87%, 60%)
        list(name = 'Poppy Yellow25', value = '#f7d988'),  # 75
        list(name = 'Poppy Yellow15', value = '#fae8b7'),  # 85

        # Nature Green (52%)
        list(name = 'Nature Green75', value = '#3c552a'),  # 25
        list(name = 'Nature Green50', value = '#78ab54'),  # 50
        list(name = 'Nature Green', value = '#7EAE5A'),    # hsl(94, 34%, 52%)
        list(name = 'Nature Green25', value = '#bcd5aa'),  # 75
        list(name = 'Nature Green15', value = '#d7e6cc'),  # 85

        # Mountain Blue (47%)
        list(name = 'Mountain Blue75', value = '#264459'), # 25
        list(name = 'Mountain Blue', value = '#4782A8'),   # hsl(204, 41%, 47%)
        list(name = 'Mountain Blue50', value = '#4d88b3'), # 50
        list(name = 'Mountain Blue25', value = '#a6c4d9'), # 75
        list(name = 'Mountain Blue15', value = '#c9dce8'), # 85

        # Twilight Purple (25)
        list(name = 'Twilight Purple75', value = '#3e2a55'), # 25
        list(name = 'Twilight Purple', value = '#3F2A56'),   # hsl(269, 34%, 25%)
        list(name = 'Twilight Purple50', value = '#7d54ab'), # 50
        list(name = 'Twilight Purple25', value = '#beaad5'), # 75
        list(name = 'Twilight Purple25', value = '#d8cce6')  # 85

      )),
    ~ map_dfr(., as_tibble)
  )[['primary']])

  s <-
    switch({{name}},
         reds = grDevices::colorRampPalette(colors[c('Cardinal Red50', 'Cool Gray25')])({{n}}),
         oranges = grDevices::colorRampPalette(colors[c('Pistache Orange50', 'Cool Gray25')])({{n}}),
         orangeYellow = grDevices::colorRampPalette(colors[c('Pistache Orange50', 'Poppy Yellow')])({{n}}),
         yellows = grDevices::colorRampPalette(colors[c('Poppy Yellow75', 'Poppy Yellow25')])({{n}}),
         greens = grDevices::colorRampPalette(colors[c('Nature Green', 'Cool Gray25')])({{n}}),
         greenBlue = grDevices::colorRampPalette(colors[c('Mountain Blue75', 'Nature Green25')])({{n}}),
         blues = grDevices::colorRampPalette(colors[c('Mountain Blue75', 'Cool Gray25')])({{n}}),
         bluePurple = grDevices::colorRampPalette(colors[c('Mountain Blue', 'Twilight Purple25')])({{n}}),
         purples = grDevices::colorRampPalette(colors[c('Twilight Purple', 'Cool Gray25')])({{n}}),
         grays = grDevices::colorRampPalette(colors[c('Granite Gray', 'Cool Gray25')])({{n}}),

         # Default spectrum
         spectral = grDevices::colorRampPalette(
                          colors[c('Cardinal Red', 'Twilight Purple',
                                   'Mountain Blue', 'Nature Green25', 'Poppy Yellow25'
                     )])({{n}}),

         lights = grDevices::colorRampPalette(
           colors[c('Cardinal Red25', 'Twilight Purple25',
                    'Mountain Blue25', 'Nature Green25', 'Poppy Yellow25'
           )])({{n}}),

         darks = grDevices::colorRampPalette(
           colors[c('Cardinal Red', 'Twilight Purple',
                    'Mountain Blue', 'Nature Green', 'Poppy Yellow50'
           )])({{n}}),

         # Best for 20-50 factors
         long = grDevices::colorRampPalette(
           colors[c('Cardinal Red', 'Twilight Purple', 'Mountain Blue',
                    'Nature Green25', 'Poppy Yellow25', 'Pistache Orange25',

                    'Cardinal Red50', 'Twilight Purple50', 'Mountain Blue25',
                    'Nature Green15', 'Poppy Yellow15','Pistache Orange15',

                    'Cardinal Red15', 'Twilight Purple15', 'Mountain Blue15'

           )])({{n}})

    ) # end switch

  #Set up attributes for our color palette
  #   Values: Hexcodes for our colors
  #   Max_n: Max number of qual categories
  values <-
    if({{reverse}}){
      unname(rev(s))
    } else {
    unname(s)
    }
  max_n <- length(values)


  sierra <- manual_pal(values)
  attr(sierra, "max_n") <- max_n
  sierra
} # end sierra.pal

