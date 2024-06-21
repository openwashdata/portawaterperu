# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(openxlsx)

# Read data --------------------------------------------------------------------
# data_in <- read_csv("data-raw/dataset.csv")
# codebook <- read_excel("data-raw/codebook.xlsx") |>
#  clean_names()

library(readxl)

catchments_untidy <- read_xls(here::here("data-raw/system_catchments.PE.xls"))

distribution_untidy <- read_xls(here::here("data-raw/system_distribution.PE.xls"))

maintenance_untidy <- read_xls(here::here("data-raw/system_main.PE.xls"))

storage_untidy <- read_xls(here::here("data-raw/system_storage-PE.xls"))

treatment_untidy <- read_xls(here::here("data-raw/system_treatment.PE.xls"))

# Tidy data --------------------------------------------------------------------
## Clean the raw data into a tidy format here

library(tidyverse)

catchments_df <- subset(catchments_untidy,
                        select = c(nombre,ID,pais,divisiones,latitud,longitud,altitud,año,comunidades,PSE,pob_servida,viv_servidas,tipo_gravedad,tipo_bombeo,tipo_pozo_manual,tipo_agua_lluvia,agua_epoca_seca,agua_epoca_lluvia) )

distribution_df <- subset(distribution_untidy,
                        select = c(nombre,ID,pais,divisiones,latitud,longitud,altitud,año,comunidades,PSE,pob_servida,viv_servidas,tipo_gravedad,tipo_bombeo,tipo_pozo_manual,tipo_agua_lluvia,agua_epoca_seca,agua_epoca_lluvia) )

maintenance_df <- subset(maintenance_untidy,
                        select = c(nombre,ID,pais,divisiones,latitud,longitud,altitud,año,comunidades,PSE,pob_servida,viv_servidas,tipo_gravedad,tipo_bombeo,tipo_pozo_manual,tipo_agua_lluvia,agua_epoca_seca,agua_epoca_lluvia) )

storage_df <- subset(storage_untidy,
                        select = c(nombre,ID,pais,divisiones,latitud,longitud,altitud,año,comunidades,PSE,pob_servida,viv_servidas,tipo_gravedad,tipo_bombeo,tipo_pozo_manual,tipo_agua_lluvia,agua_epoca_seca,agua_epoca_lluvia))

treatment_df <- subset(treatment_untidy,
                        select = c(nombre,ID,pais,divisiones,latitud,longitud,altitud,año,comunidades,PSE,pob_servida,viv_servidas,tipo_gravedad,tipo_bombeo,tipo_pozo_manual,tipo_agua_lluvia,agua_epoca_seca,agua_epoca_lluvia))


join1 <- full_join(catchments_df, maintenance_df)

join2 <- full_join(join1, treatment_df)

join3 <- full_join(join2,  distribution_df)

total_data <- full_join(join3, storage_df)

portawaterperu <- total_data


# Export Data ------------------------------------------------------------------
usethis::use_data(portawaterperu, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(portawaterperu,
                 here::here("inst", "extdata", paste0("portawaterperu", ".csv")))
openxlsx::write.xlsx(portawaterperu,
                     here::here("inst", "extdata", paste0("portawaterperu", ".xlsx")))
