#### Preamble
#Exercises from TSwD afsnit 3.8
# Case:n a certain country there are only ever four parties that could win a seat in parliament. 
# Whichever candidate has a plurality of votes in the area associated with a given seat wins that seat. The parliament is made up of 175 total seats. 
# An analyst is interested in the number of votes for each party by seat. Please sketch what a dataset could look like, and then sketch a graph that you could build to show all observations.

library(tidyverse)
library(tinytable)
library(readr)

election_results <-
  tibble(
    seat = rep(1:175, each = 4),
    party = rep(x = 1:4, times = 175),
    votes = runif(n = 175 * 4, min = 0, max = 1000) |> floor()
  )

#Tests to check if boundaries are met and classes are correct
class(election_results$votes)
head(election_results)
summary(election_results)

#Loading actual election data and running tests
# Found here: https://www.statistikbanken.dk/20005 and cleaned with ChatGPT R tutor
election_results <- read_csv("raw_election_data.csv")
head(election_results)
summary(election_results)
dim(election_results) #I could not run "class"

#Skulle lave tabel som her
election_results |> 
  slice_max(Votes, n = 1, by = Party) |> 
  count(Party) |>
  tt()
# Det virker ikke, fordi datasættet kun har en værdi, som er det totale antal
# I stedet gør jeg:
table(election_results)
#Virker ikke særlig pænt, orker ikke mere nu

