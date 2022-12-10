#=====================================================================#
# This is code to create:
# Authored by and feedback to:
# MIT License
# Version:
#=====================================================================#

library(tidyverse)
install.packages("ggthemes")
library(ggthemes)
source("code/01-import.R")

###
glimpse(nfl_stats)
hi_rsh <-filter(nfl_stats, rush_yds > 200)%>% 
    select(name, rush_yds, starts_with("game"))
hi_rsh %>% 
    count(game_year)



labs_grp_bubble <- labs(
    title = "Rushing Yds >200",
    x = "Year", y = "Name", 
    size = "Rushing Yards")

ggp2_grp_bubble <- filter(nfl_stats, rush_yds > 200) |> 
    ggplot(aes(
        x = game_year, y = name)) + 
    geom_point(
        aes(size = rush_yds, fill= name), 
        show.legend = FALSE,
        alpha = 2/3, shape = 21, color = "black") +
   scale_size(range = c(1,7), name = "rushing yards")+
    ggthemes::theme_few()

#color is a fill=rush_yds inside the AES funtcion

ggp2_grp_bubble + 
    labs_grp_bubble



###

glimpse(nfl_stats)
hi_pass <-filter(nfl_stats, pass_yds > 500) %>% 
    select(name, pass_yds, starts_with("game"))
hi_pass %>% 
    count(game_year)




labs_grp_bubble <- labs(
    title = "Passing Yards >500",
    x = "Year", y = "Name", 
    size = "Passing Yards")

ggp2_grp_bubble <- filter(nfl_stats, pass_yds > 500) |> 
    ggplot(aes(
        x = game_year, y = name)) + 
    geom_point(
        aes(size = pass_yds, fill= name), 
        show.legend = FALSE,
        alpha = 2/3, shape = 21, color = "black") +
    scale_size(range = c(1,7), name = "pass yards")+
    ggthemes::theme_few()

#color is a fill=rush_yds inside the AES funtcion

ggp2_grp_bubble + 
    labs_grp_bubble


###

glimpse(nfl_stats)
hi_pass <-filter(nfl_stats, pass_yds > 500) %>% 
    select(name, pass_yds, starts_with("game"))
hi_pass %>% 
    count(game_year)


labs_scatter <- labs(
    title = "Highest Passers",
    x = "game_year", y = "name)")
ggp2_scatter <- filter(nfl_stats, pass_yds > 500)|>
    ggplot(
        aes(x = game_year, 
            y = name)) +
    geom_point()

ggp2_scatter + 
    labs_scatter
###

glimpse(nfl_stats)
hi_rec <-filter(nfl_stats, rec_yds > 200) %>% 
    select(name, pass_yds, starts_with("game"))
hi_pass %>% 
    count(game_year)

labs_grp_bubble <- labs(
    title = "Passing Yards >500",
    x = "Year", y = "Name", 
    size = "Passing Yards")

ggp2_grp_bubble <- filter(nfl_stats, pass_yds > 500) |> 
    ggplot(aes(
        x = game_year, y = name)) + 
    geom_point(
        aes(size = pass_yds, fill= name), 
        show.legend = FALSE,
        alpha = 2/3, shape = 21, color = "black") +
    scale_size(range = c(1,7), name = "pass yards")+
    ggthemes::theme_few()

#color is a fill=rush_yds inside the AES funtcion

ggp2_grp_bubble + 
    labs_grp_bubble













