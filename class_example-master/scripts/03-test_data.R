#### Preamble ####
# Purpose: Simulates data
# Author: Haobo Ren
# Date: 19 September 2024
# Contact: haobo.ren@mail.utoronto.ca
# License:
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))

# Test 





