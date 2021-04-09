library(tidyverse)
library(StatsBombR) 
library(ggplot2)
library(SBpitch)
library(ggsoccer)
library(soccermatics)


Comp_All <- FreeCompetitions() %>%
  filter()

Comp_Chl_2018_19 <- FreeCompetitions() %>%
  filter(competition_id==16 & season_name=="2018/2019") 

Matches_Chl_2018_19 <- FreeMatches(Comp_Chl_2018_19) 

StatsBombData_Chl_2018_19 <- StatsBombFreeEvents(MatchesDF = Matches_Chl_2018_19, Parallel = T) 
StatsBombData_Chl_2018_19 = allclean(StatsBombData_Chl_2018_19)

teams_and_players <-   get.lineupsFree(StatsBombData_Chl_2018_19)
players_Liverpool <- teams_and_players[[3]][[2]]
players_Tottenham <- teams_and_players[[3]][[1]]

