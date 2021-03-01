uri <- "https://raw.githubusercontent.com/syt123450/giojs/master/examples/data/sampleData.json"
country_data <- jsonlite::fromJSON(uri)

usethis::use_data(country_data, overwrite = TRUE)
