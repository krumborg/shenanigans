SIMULATED_DATA <-
  tibble(
    division = c(1:150, 151),
    party = sample(
      x = c("Liberal"),
      size = 151,
      replace = T
    )
  )