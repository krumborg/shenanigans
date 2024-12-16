# Test script
# Telling stories with data notes
# Julie Krumborg

## Reproducibility

### Asking for help with errors
library(tidyverse)

# 1. Reprex
library(reprex) #library that helps with highlighting trouble-code to share
 
# 2. Highlight problematic code

# 3. Run reprex()
reprex()
# If the code is self-contained, then it will preview in the viewer. If it is not, then it will error, and you should rewrite the code so that it is self-contained.

#### Linting and styling
library(lintr)
library(styler)
SIMULATED_DATA <- #this is saved in the wd as linting_example.R
  tibble(
    division = c(1:150, 151),
    party = sample(
      x = c("Liberal"),
      size = 151,
      replace = T
    )
  )

lint(filename = "linting_example.R") #From lintr. Will suggest improvements in "Markers" below

style_file(path = "linting_example.R") #From styler-library. Will make code prettier automatically
