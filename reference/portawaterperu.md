# portawaterperu: A Preliminary Review of Peruvian Potable Water System Data

Data for this project was obtained from @SIASAR, an information system
containing data on rural water supply and sanitation services. Using
SIASAR's "download data by country" tool, all available data for Peru
(10 excel files) were downloaded. After examining the 10 excel files,
only 5 pertained to potable water systems. Those 5 data sets were
imported into R and subsequently empty values and unnecessary columns
were deleted from them. Finally, the 5 data sets were combined into 1
data frame based on community ID. The combined, cleaned data set
contains data from 32 communities.

## Usage

``` r
portawaterperu
```

## Format

A tibble with 32 rows and 51 variables

- name:

  Name of the community water system

- ID:

  ID of the water system

- div:

  Geographical division of the community

- lat:

  Latitude of the community

- long:

  Longitude of the community

- alt:

  Altitude of the community

- year:

  Year of data collection about communities. (Use in caution)

- community:

  Community name

- service_provider:

  Service provider (PSE stands for Prestador de servicio)

- pop_serviced:

  Population served

- hh_serviced:

  Household served

- type_gravity:

  Is the community served by a gravity water supply system?

- type_pump:

  Is the community served by a pumped water supply system?

- type_well:

  Is the community served by a well/hand pump water supply system?

- type_rain:

  Is the community served by a rainwater harvesting water supply system?

- water_dry_season:

  Are there adequate water resources (at the source) to meet demand in
  dry season?

- water_rain_season:

  Are there adequate water resources (at the source) to meet demand in
  rainy season?

- source_id:

  ID of the water source

- source_type:

  Type of the water source, options including (1) lake, (2) river, (3)
  dug well, and (4) drilled well.

- source_lat:

  Latitude of the water source

- source_long:

  Longitude of the water source

- source_alt:

  Altitude of the water source

- catch_macromeasure:

  Macro measurement of catchment

- catch_status:

  Status of the catchment, options including (1) A: good, (2) B:
  fair, (3) C: poor, and (4) D: Inoperable.

- maintenance_date:

  Date of the maintainance data collection

- catch_abcd:

  Status of catchment at maintainance, options including (1) A:
  good, (2) B: fair, (3) C: poor, and (4) D: Inoperable.

- cond_abcd:

  Status of condition at maintainance, options including (1) A:
  good, (2) B: fair, (3) C: poor, and (4) D: Inoperable.

- treat_type:

  Type of treatment, options including (1) desinfection with chlorine
  and (2) slow filtration.

- treat_abcd:

  Status of treatment at maintainance, options including (1) A:
  good, (2) B: fair, (3) C: poor, and (4) D: Inoperable.

- storage_abcd:

  Status of the storage system at maintainance, options including (1) A:
  good, (2) B: fair, (3) C: poor, and (4) D: Inoperable.

- dist_abcd:

  Status of the distribution network at maintainance, options
  including (1) A: good, (2) B: fair, (3) C: poor, and (4) D:
  Inoperable.

- flow:

  Flow rate, check unit with column

- flow_unit:

  Unit of flow rate

- chlorine_res:

  Chlorine residual

- chlorine_res_unit:

  Unit of chlorine residual

- treatment_ID:

  ID of the treatment

- treatment_type:

  Type of the treatment

- treatment_function:

  Is treatment functional?

- treatment_lat:

  Latitude of the water treatment

- treatment_long:

  Longitude of the water treatment

- treatment_alt:

  Altitude of the water treatment

- storage_ID:

  ID of the water storage infrastructure.

- storage_clean_unit:

  Unit of cleaning frequency of the storage system

- storage_lat:

  Latitude of the water storage infrastructure.

- storage_long:

  Longitude of the water storage infrastructure.

- storage_alt:

  Altitude of the water storage infrastructure.

- storage_status:

  Status of the water storage infrastructure, options including (1) A:
  good, (2) B: fair, (3) C: poor, and (4) D: Inoperable.

- dist_ID:

  ID of the distribution system

- dist_hour:

  Hours of service per day

- dist_connection:

  Number of distribution network connections

- dist_status:

  Status of the distribution system, options including (1) A: good, (2)
  B: fair, (3) C: poor, and (4) D: Inoperable.
