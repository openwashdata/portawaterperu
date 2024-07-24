#' portawaterperu: A Preliminary Review of Peruvian Potable Water System Data
#'
#' Data for this project was obtained from @SIASAR, an information system containing data on rural water supply and sanitation services. Using SIASAR's "download data by country" tool, all available data for Peru (10 excel files) were downloaded. After examining the 10 excel files, only 5 pertained to potable water systems. Those 5 data sets were imported into R and subsequently empty values and unnecessary columns were deleted from them. Finally, the 5 data sets were combined into 1 data frame based on community ID. The combined, cleaned data set contains data from 32 communities.
#'
#' @format A tibble with 32 rows and 54 variables
#' \describe{
#'   \item{name}{Name of the community water system}
#'   \item{ID}{ID of the water system}
#'   \item{div}{ "Geographical division of the community"}
#'   \item{lat}{ "Latitude of the community"}
#'   \item{long}{ "Longitude of the community"}
#'   \item{alt}{ "Altitude of the community"}
#'   \item{year}{ "Year of data collection. (Use in caution)}
#'   \item{community}{Community name}
#'   \item{service_provider}{Service provider (PSE stands for Prestador de servicio)}
#'   \item{pop_serviced}{Population served}
#'   \item{hh_serviced}{Household served}
#'   \item{type_gravity}{Is the community served by a gravity water supply system?}
#'   \item{type_pump}{Is the community served by a pumped water supply system?}
#'   \item{type_well}{Is the community served by a well/hand pump water supply system?}
#'   \item{type_rain}{Is the community served by a rainwater harvesting water supply system?}
#'   \item{water_dry_season}{Are there adequate water resources (at the source) to meet demand in dry season?}
#'   \item{water_rain_season}{Are there adequate water resources (at the source) to meet demand in rainy season?}
#'   \item{source_id}{ID of the water source}
#'   \item{source_type}{Type of the water source, options including (1) lake, (2) river, (3) dug well, and (4) drilled well.}
#'   \item{source_lat}{Latitude of the water source}
#'   \item{source_long}{Longitude of the water source}
#'   \item{source_alt}{Altitude of the water source}
#'   \item{catch_macromeasure}{Macro measurement of catchment}
#'   \item{catch_status}{Status of the catchment, options including (1) A: good, (2) B: regular, and (3) C: bad.}
#'   \item{maintenance_date}{Date of the maintainance data collection}
#'   \item{date_validation}{}
#'   \item{catch_abcd}{Status of catchment at maintainance}
#'   \item{cond_abcd}{Status of condition at maintainance}
#'   \item{treat_type}{Type of treatment}
#'   \item{treat_abcd}{Status of treatment at maintainance}
#'   \item{storage_abcd}{Status of the storage system at maintainance}
#'   \item{dist_abcd}{Status of the distribution network at maintainance}
#'   \item{flow}{Flow rate, check unit with column }
#'   \item{flow_unit}{Unit of flow rate}
#'   \item{chlorine}{}
#'   \item{filtration}{}
#'   \item{chlorine_res}{Chlorine residual}
#'   \item{chlorine_res_unit}{Unit of chlorine residual}
#'   \item{treatment_ID}{ID of the treatment}
#'   \item{treatment_type}{Type of the treatment}
#'   \item{treatment_function}{Is treatment functional?}
#'   \item{treatment_lat}{Latitude of the water treatment}
#'   \item{treatment_long}{Longitude of the water treatment}
#'   \item{treatment_alt}{Altitude of the water treatment}
#'   \item{storage_ID}{ID of the water storage infrastructure.}
#'   \item{storage_clean_unit}{Latitude of the water storage infrastructure.}
#'   \item{storage_lat}{Longitude of the water storage infrastructure.}
#'   \item{storage_long}{Altitude of the water storage infrastructure.}
#'   \item{storage_alt}{Status of the water storage infrastructure, options including (1) A, (2) B, (3) C, and (4) D.}
#'   \item{storage_status}{}
#'   \item{dist_ID}{ID of the distribution system}
#'   \item{dist_hour}{Hours of service per day}
#'   \item{dist_connection}{Number of distribution network connections}
#'   \item{dist_status}{Status of the distribution system}
#' }
"portawaterperu"
