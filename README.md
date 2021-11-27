# chilean-undersecretaries
**Data Set on Chilean Undersecretaries (1990-2014)**

[![Version](https://img.shields.io/badge/version-v1.3.3-blue.svg)](CHANGELOG.md) [![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](STATUS.md) [![GitHub issues](https://img.shields.io/github/issues/bgonzalezbustamante/chilean-undersecretaries.svg)](https://github.com/bgonzalezbustamante/chilean-undersecretaries/issues/) [![GitHub issues-closed](https://img.shields.io/github/issues-closed/bgonzalezbustamante/chilean-undersecretaries.svg)](https://github.com/bgonzalezbustamante/chilean-undersecretaries/issues?q=is%3Aissue+is%3Aclosed) [![DOI](https://zenodo.org/badge/428418754.svg)](https://zenodo.org/badge/latestdoi/428418754) [![License](https://img.shields.io/badge/license-CC--BY--4.0-black)](LICENSE.md) [![R](https://img.shields.io/badge/made%20with-R%20v4.1.0-1f425f.svg)](https://cran.r-project.org/)

## Overview

This repository contains a data set on Chilean undersecretaries between 1990 and 2014 in Comma-Separated Values (CSV) format with Unicode encoding (UTF-8). The data collection was carried out based on official sources such as archives of Congress and ministers, the National Library, and press archives. Part of this data has been used in the following articles:

- González-Bustamante, B. (2020). The Politics‐Administration Dichotomy: A Case Study of the Chilean Executive during the Democratic Post‐Transition. *Bulletin of Latin American Research, 39*(5), 582-597. DOI: [10.1111/blar.13044](https://doi.org/10.1111/blar.13044)

- González-Bustamante, B., & Olivares, A. (2016). A rotatividade de subsecretários dos ministérios no Chile (1990-2014). *Observatório de elites políticas e sociais do Brasil. NUSP/UFPR, 3*(5), 1-19. URL: [www.researchgate.net](https://www.researchgate.net/publication/321993740_A_rotatividade_de_subsecretarios_dos_ministerios_no_Chile_1990-2014)

- González-Bustamante, B., & Olivares, A. (2015). Rotación de subsecretarios en Chile: Una exploración de la segunda línea gubernamental, 1990-2014. *Revista de Gestión Pública, IV*(2), 151-190. DOI: [10.22370/rgp.2015.4.2.2230](https://doi.org/10.22370/rgp.2015.4.2.2230)

## Metadata and Preservation

This data is stored with version control on a GitHub repository. Furthermore, a Digital Object Identifier is provided by Zenodo. The structure of the repository is detailed below.

*chilean-undersecretaries* \
|-- .gitignore \
|-- CHANGELOG.md \
|-- chilean-undersecretaries.Rproj \
|-- CITATION.cff \
|-- LICENSE.md \
|-- README.md \
|-- STATUS.md \
|-- code \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- eda_undersecretaries_files \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- figure-gfm \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- plot1-1.png \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- plot2-1.png \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- plot3-1.png \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- eda_undersecretaries.md \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- eda_undersecretaries.Rmd \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- potential_inconsistencies.md \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- potential_inconsistencies.Rmd \
|-- data \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- chl_undersecretaries.csv 

4 directories and 15 files.

In addition, this README file in Markdown (MD) format provides specific information to ensure the reusability of the data.

## Store and Backup

The GitHub repository has controlled access with Two-Factor Authentication (2FA) with two physical USB security devices (Bastián González-Bustamante, [ORCID iD 0000-0003-1510-6820](https://orcid.org/0000-0003-1510-6820)), a mobile application (Alejandro Olivares, [ORCID iD 0000-0001-6934-2437](https://orcid.org/0000-0001-6934-2437)), and one physical USB seurity device (Carla Cisternas, [ORCID iD 0000-0001-7948-6194](https://orcid.org/0000-0001-7948-6194)). USB devices and the mobile application issue one-time passwords to generate a cryptographic authentication FIDO2 and U2F.

Moreover, the repository is backed up on Hierarchical File Server (HFS) for recovery in case of incidents. This backup is located on the University of Oxford hub connected to Code42 Cloud Backup encrypted with 256-bit AES. The backup is performed with every release on GitHub and receives weekly light maintenance and a deep one every month. This backup will be secured until May 2024. An extension of this period will be evaluated on budget availability.

## Getting Started

### Software

We use R version 4.1.0 (2021-05-18) -- "Camp Pontanezen".

Required R libraries are: "DataExplorer" and "ggplot2".

We recommend that users run exploratory data analysis code from the root directory using the R project "chilean-undersecretaries.Rproj".

### Replication Instructions

The folder "code" contains the exploratory data analysis in R, RMD and MD formats ([**eda_undersecretaries.md**](code/eda_undersecretaries.md)).

The files will be overwritten if you run the R script contained in "eda_undersecretaries.Rmd".

### Codebook

The file "chl_undersecretaries.csv" is the data set on Chilean undersecretaries between 1990 and 2014. This set contains 290 observations.

- **id**. Unique ID for each undersecretary-portfolio observation.

- **country**. Country name.

- **name**. Officeholder name.

- **sex**. Officeholder sex.

- **president**. President in office.

- **start_president**. Start date of presidential term.

- **end_president**. End date of presidential term.

- **ministry**. Ministry name.

- **undersec**. Portfolio name.

- **start_undersec**. Officeholder start date.

- **end_undersec**. Officeholder end date.

- **party**. Officeholder political party.[^1]

A number of other variables can be calculated with aggregate data from different sources considering the appointment dates and departure of officeholders. In addition, data from González-Bustamante and Olivares (2016, 2018)[^2] can be used to compare and obtain some variables from cabinet members.

## License

This data is released under a [Creative Commons Attribution 4.0 International license (CC BY 4.0)](LICENSE.md). This open-access license allows the data to be shared, reused, adapted as long as appropriate acknowledgement is given.

## Citation

González-Bustamante, B., & Olivares, A. (2021). Data Set on Chilean Undersecretaries (1990-2014) (Version 1.3.1 -- Fragrant Disk) [Data set]. DOI: [10.5281/zenodo.5715384](https://doi.org/10.5281/zenodo.5715384)

## Authors

Bastián González-Bustamante \
bastian.gonzalezbustamante@politics.ox.ac.uk \
[ORCID iD 0000-0003-1510-6820](https://orcid.org/0000-0003-1510-6820) \
https://bgonzalezbustamante.com 

Alejandro Olivares \
alejandro.olivares@uct.cl \
[ORCID iD 0000-0001-6934-2437](https://orcid.org/0000-0001-6934-2437)

## CRediT - Contributor Roles Taxonomy

Bastián González-Bustamante ([ORCID iD 0000-0003-1510-6820](https://orcid.org/0000-0003-1510-6820)): Conceptualisation, data curation, formal analysis, funding acquisition, methodology, project administration, resources, software, validation, supervision, and visualisation.

Alejandro Olivares ([ORCID iD 0000-0001-6934-2437](https://orcid.org/0000-0001-6934-2437)): Conceptualisation, funding acquisition, investigation, methodology, project administration, resources, validation, and supervision.

Carla Cisternas ([ORCID iD 0000-0001-7948-6194](https://orcid.org/0000-0001-7948-6194)): Investigation.

### Latest Revision

[November 27, 2021](CHANGELOG.md).

[^1]: The labels correspond to the following political parties: PDC (*Partido Demócrata Cristiano*), PH (*Partido Humanista*), PPD (*Partido por la Democracia*), PR (*Partido Radical*), PRSD (*Partido Radical Socialdemócrata*), PS (*Partido Socialista de Chile*), RN (*Renovación Nacional*), and UDI (*Unión Demócrata Independiente*). Finally, NP is for non-partisan undersecretaries, which could be recoded as a dummy variable.
[^2]: González-Bustamante, B., & Olivares, A. (2018). La élite política gubernamental en Chile: Supervivencia de ministros. In A. Codato and F. Espinoza (eds.), *Las Élites en las Américas: Diferentes Perspectivas*. Curitiba: Editora Universidade Federal do Paraná. González-Bustamante, B., & Olivares, A. (2016). Cambios de gabinete y supervivencia de los ministros en Chile durante los gobiernos de la Concertación (1990-2010). *Colombia Internacional*, 87, 81-108. DOI: [10.7440/colombiaint87.2016.04](https://doi.org/10.7440/colombiaint87.2016.04).
