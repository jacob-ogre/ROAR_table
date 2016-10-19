# BSD_2_clause

library(DT)
library(shiny)
library(shinyjs)
library(tidyverse)

load("data/ROAR_05May2016.RData")
full <- full[, -3]
load("data/spp_lookup.rda")

# # make spp lookup df
# spp_lookup <- data_frame(
#                 idx = seq(1, length(full$plan_or_addendum)),
#                 spp = full$action_species) %>%
#   unnest(spp)
# 
# save(spp_lookup, file = "data/spp_lookup.rda")
