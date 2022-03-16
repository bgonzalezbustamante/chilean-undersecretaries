## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#### Script ID ####

## Release v2.0.0 -- Shy Mud
## R version 4.1.0 (2021-05-18) -- "Camp Pontanezen"
## Date: March 2022

## Bastián González-Bustamante (University of Oxford, UK)
## https://bgonzalezbustamante.com
## Alejandro Olivares (Universidad Católica de Temuco, Chile)

## Data Set on Chilean Undersecretaries
## https://github.com/bgonzalezbustamante/chilean-undersecretaries
## https://doi.org/10.5281/zenodo.5715384

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#### Packages and Data ####

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

## Package
library(tidyverse)

## Clean Environment
rm(list = ls())

## Data
data_CHL <- read.csv("data/raw/chl_undersecretaries.csv", encoding = "UTF-8")

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#### Revision ####

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

length(which(is.na(data_CHL$end_undersec)))

which(data_CHL$name == "Juan Francisco Galli Basili" & is.na(data_CHL$end_undersec))
data_CHL$end_undersec[316] <- format(as.Date("2022-03-09"), "%Y-%m-%d")

which(data_CHL$name == "Carolina Valdivia Torres" & is.na(data_CHL$end_undersec))
data_CHL$end_undersec[414] <- format(as.Date("2022-02-06"), "%Y-%m-%d")

which(data_CHL$name == "Pamela Gidi Masías" & is.na(data_CHL$end_undersec))
data_CHL$end_undersec[419] <- format(as.Date("2021-06-09"), "%Y-%m-%d")
data_CHL$party[419] <- "EVO"

new_case <- data.frame(id = 425,
                       country = "Chile",
                       name = "Francisco Moreno Guzmán",
                       sex = "man",
                       president = "Sebastián Piñera II",
                       start_president = as.Date(data_CHL$start_president[which(data_CHL$president == "Sebastián Piñera II")][1]),
                       end_president = as.Date(data_CHL$end_president[which(data_CHL$president == "Sebastián Piñera II")][1]),
                       ministry = "Transporte y Telecomunicaciones",
                       undersec = "Telecomunicaciones",
                       start_undersec = format(as.Date("2021-06-09"), "%Y-%m-%d"),
                       end_undersec = NA,
                       party = "UDI")

data_CHL$start_president <- as.Date(data_CHL$start_president)
data_CHL$end_president <- as.Date(data_CHL$end_president)
data_CHL <- bind_rows(data_CHL, new_case, .id = NULL)

data_CHL$end_undersec[which(is.na(data_CHL$end_undersec))] <- format(as.Date("2022-03-11"), "%Y-%m-%d")

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#### v2.0.0 -- Shy Mud ####

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

write.csv(data_CHL, "data/tidy/chl_undersecretaries.csv", fileEncoding = "UTF-8", row.names =  FALSE)
