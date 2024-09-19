#### Preamble ####
# Purpose: Simulates data
# Author: Haobo Ren
# Date: 19 September 2024
# Contact: haobo.ren@mail.utoronto.ca
# License:
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
# get package
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# get all resources for this package
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# identify datastore resources;
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% 
  get_resource()


#### Save data ####
write_csv(data, "data/raw_data/raw_data.csv") 
