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
                        select = -c(fecha_encuesta, fecha_validacion, pais, codigo, otras_divisiones ,n_comunidades, n_PSE,financiamientos,monto_financ,monto_rehab,fuente_codigo,fuente_nombre, fuente_principal,	fuente_caudal,	fuente_caudal_ud,	fuente_caudal_fecha,	fuente_caudal_estiaje,	fuente_caudal_estiaje_ud, fuente_caudal_estiaje_fecha, fuente_vegetacion,	fuente_erosion,	fuente_proteccion,	fuente_contaminacion_org,	fuente_contaminacion_inorg,	capt, eiaaut, eiainf, eiazpa, eiastr, eia) )

distribution_df <- subset(distribution_untidy,
                        select = -c(fecha_encuesta, fecha_validacion, nombre, pais, latitud,	longitud,	altitud,	codigo,	otras_divisiones,	año,	n_comunidades,	n_PSE,	comunidades,	PSE,	pob_servida,	viv_servidas,	financiamientos,	monto_financ,	monto_rehab,	tipo_gravedad,	tipo_bombeo,	tipo_pozo_manual,	tipo_agua_lluvia,	agua_epoca_seca,	agua_epoca_lluvia, dist_codigo, dist_micromed, dist_micromed_opera, dist_distancia, eiaaut, eiainf, eiazpa, eiastr, eia) )

maintenance_df <- subset(maintenance_untidy,
                        select = -c(fecha_encuesta, fecha_validacion, nombre, pais,	divisiones,	latitud,	longitud,	altitud,	codigo,	otras_divisiones,	año,	n_comunidades,	n_PSE,	comunidades,	PSE, pob_servida,	viv_servidas,	financiamientos,	monto_financ,	monto_rehab,	tipo_gravedad,	tipo_bombeo,	tipo_pozo_manual,	tipo_agua_lluvia,	agua_epoca_seca,	agua_epoca_lluvia, capt_n, capt_tipo_principal,	capt_caudal_total,	capt_caudal_ud,	capt_estado, cond_n,	cond_estado, trat_n, almc_n, almc_volumen, almc_volumen_ud, almc_limpieza, almc_limpieza_ud, almc_estado, dist_n, dist_micromed_consumo, dist_distancia, dist_estado, cloro_fecha, pasa_coliformes, fecha_coliformes,	pasa_fisicoquimico,	fecha_fisicoquimico, eiaaut,	eiainf,	eiazpa,	eiastr,	eia,	siasar_version) )

storage_df <- subset(storage_untidy,
                        select = -c(fecha_encuesta,	fecha_validacion,	nombre, pais,	divisiones,	latitud,	longitud,	altitud,	codigo,	otras_divisiones,	año,	n_comunidades,	n_PSE,	comunidades,	PSE,	pob_servida,	viv_servidas,	financiamientos,	monto_financ,	monto_rehab,	tipo_gravedad,	tipo_bombeo,	tipo_pozo_manual,	tipo_agua_lluvia,	agua_epoca_seca,	agua_epoca_lluvia,almc_codigo,	almc_volumen,	almc_volumen_ud,	almc_limpieza, eiaaut,	eiainf,	eiastr,	eiazpa,	eia))

treatment_df <- subset(treatment_untidy,
                        select = -c(fecha_encuesta,	fecha_validacion,	nombre, pais, divisiones,	latitud,	longitud,	altitud,	codigo,	otras_divisiones,	año,	n_comunidades,	n_PSE,	comunidades,	PSE,	pob_servida,	viv_servidas,	financiamientos,	monto_financ,	monto_rehab,	tipo_gravedad,	tipo_bombeo,	tipo_pozo_manual,	tipo_agua_lluvia,	agua_epoca_seca,	agua_epoca_lluvia, trat_codigo, trat_estado,	eiaaut,	eiainf,	eiastr,	eiazpa,	eia))








# Export Data ------------------------------------------------------------------
usethis::use_data(portawaterperu, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(portawaterperu,
                 here::here("inst", "extdata", paste0("portawaterperu", ".csv")))
openxlsx::write.xlsx(portawaterperu,
                     here::here("inst", "extdata", paste0("portawaterperu", ".xlsx")))
