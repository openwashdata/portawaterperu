#' portawaterperu: Title goes here
#' 
#' Description of the data goes here...
#' 
#' @format A tibble with 6 rows and 18 variables
#' \describe{
#'   \item{nombre}{name of community water system}
#'   \item{ID}{identification number (unique to each water system)}
#'   \item{pais}{Country of data collection}
#'   \item{divisiones}{geographic division (region; province; district)}
#'   \item{latitud}{latitude of district}
#'   \item{longitud}{longitude of district}
#'   \item{altitud}{altitude of district}
#'   \item{ano}{year water system data was collected}
#'   \item{comunidades}{community/municipality/town name}
#'   \item{PSE}{water service provider}
#'   \item{pob_servida}{population number served by water service provider}
#'   \item{viv_servidas}{household number served by water service provider}
#'   \item{tipo_gravedad}{is the community served by a gravity distribution system?}
#'   \item{tipo_bombeo}{is the community served by a force/pump distribution system}
#'   \item{tipo_pozo_manual}{is the community served by a well system (communal collection point / no distribution pipes)}
#'   \item{tipo_agua_lluvia}{rain water (not sure in what regard this relates to water system won't use in analysis)}
#'   \item{agua_epoca_seca}{dry season water (not sure in what regard this relates to water system won't use in analysis)}
#'   \item{agua_epoca_lluvia}{rainy season water (not sure in what regard this relates to water system won't use in analysis)}
#' }
"portawaterperu"
