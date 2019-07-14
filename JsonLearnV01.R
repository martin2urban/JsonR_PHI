#json learn V01
library(jsonlite)
library(data.table)
library(tibble)
#yelp <- fromJSON("yelp_academic_dataset_business.json")
rawl <- fread("https://soda.demo.socrata.com/resource/earthquakes.json?")
yelp <- fromJSON("https://soda.demo.socrata.com/resource/earthquakes.json?")
str(yelp)
#location is a datframe, want to flatten
yelp_flat =jsonlite::flatten(yelp)
str(yelp_flat)
yelp_tbl <- as_data_frame(yelp_flat)

yelp %>% as_data_frame()

jsonOut = yelp %>% toJSON(pretty = TRUE)
library(readr)
path="./MuJsonOut.json"
jsonOut %>% readr::write_lines(path)
