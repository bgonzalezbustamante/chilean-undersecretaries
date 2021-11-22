## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#### Script ID ####

## Exploratory Data Analysis Undersecretaries
## R version 4.1.0 (2021-05-18) -- "Camp Pontanezen"
## Date: November 2021

## Bastián González-Bustamante (University of Oxford, UK)
## https://bgonzalezbustamante.com
## Alejandro Olivares (Universidad Católica de Temuco, Chile)

## Data Set on Chilean Undersecretaries
## https://doi.org/10.5281/zenodo.5715384

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#### Packages and Data ####

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

## Packages
library(DataExplorer)
library(ggplot2)

## Data
data_CHL <- read.csv("../data/chl_undersecretaries.csv", encoding = "UTF-8")

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#### EDA ####

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

## Data Set Plot 
plot_intro(data_CHL, ggtheme = theme_minimal(base_size = 12),
           theme_config = theme(legend.position = "none")) 

## Discrete Variables
selection_var1 <- drop_columns(data_CHL, c("id", "country", "name", "start_president", "end_president",
                                           "ministry", "undersec", "start_undersec", "end_undersec"))
plot_bar(selection_var1, ggtheme = theme_minimal(base_size = 12))

## Time Variable
data_CHL$time <- with(data_CHL, (as.Date(data_CHL$end_undersec) - as.Date(data_CHL$start_undersec)))
data_CHL$time <- as.numeric(data_CHL$time)
selection_var2 <- drop_columns(data_CHL, c(1:12))
plot_histogram(selection_var2, ggtheme = theme_minimal(base_size = 12))
