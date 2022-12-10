#=====================================================================#
# This is code to create:
# Authored by and feedback to:
# MIT License
# Version:
#=====================================================================#

library(tidyverse)
library(tidytuesdayR)
NFL_Data <-tidytuesdayR::tt_load("2018-08-28")
nfl_stats <- NFL_Data$`nfl_2010-2017`
write_csv(x = nfl_stats,file = "data/raw/nfl_stats.csv")
