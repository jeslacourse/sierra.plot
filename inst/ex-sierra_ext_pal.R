library(scales)
library(tidyverse)
#library(sierra.plot)

show_col(sierra_ext_pal(n=12)(12)) # Default palette: spectral
show_col(sierra_ext_pal(name = 'greens', n=4)(4))
show_col(sierra_ext_pal(name = 'long', n=40)(40))
show_col(sierra_ext_pal(name = 'lights', n=14)(14))
show_col(sierra_ext_pal(name = 'darks', n=14)(14))
