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


StatsBombData_Chl_2018_19%>%
  soccerxGTimeline(homeCol = "blue", awayCol = "red")
