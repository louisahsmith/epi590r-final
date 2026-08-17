library(tidyverse)

eplp <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-06-02/eplp.csv')

# create a smaller version of data
eplp_small <- slice(eplp, 1:100)

# create data/clean folder if it doesn't already exist
if (!dir.exists(here::here("data"))) {
	dir.create(here::here("data"))
}
# create data/clean folder if it doesn't already exist
if (!dir.exists(here::here("data", "clean"))) {
	dir.create(here::here("data", "clean"))
}

write_rds(eplp_small, here::here("data", "clean", "eplp_small.rds"))
