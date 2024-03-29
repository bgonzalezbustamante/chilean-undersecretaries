# chilean-undersecretaries
**Data Set on Chilean Undersecretaries (1990-2022)**

[![Version](https://raw.githubusercontent.com/bgonzalezbustamante/chilean-undersecretaries/master/badges/v_2_1_4.svg)](CHANGELOG.md) [![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](https://raw.githubusercontent.com/bgonzalezbustamante/chilean-undersecretaries/master/badges/inactive.svg)](STATUS.md) [![DOI](https://raw.githubusercontent.com/bgonzalezbustamante/chilean-undersecretaries/master/badges/doi.svg)](https://doi.org/10.5281/zenodo.5715384) [![License](https://raw.githubusercontent.com/bgonzalezbustamante/chilean-undersecretaries/master/badges/mit.svg)](LICENSE-MIT.md) [![License](https://raw.githubusercontent.com/bgonzalezbustamante/chilean-undersecretaries/master/badges/cc_by_4_0.svg)](LICENSE-CC.md) [![License](https://raw.githubusercontent.com/bgonzalezbustamante/chilean-undersecretaries/master/badges/lppl.svg)](LICENSE-LPPL.md) [![R](https://raw.githubusercontent.com/bgonzalezbustamante/chilean-undersecretaries/master/badges/r_4_1_0.svg)](https://cran.r-project.org/) [![Latex](https://raw.githubusercontent.com/bgonzalezbustamante/chilean-undersecretaries/master/badges/latex.svg)](https://www.latex-project.org/) [![tDL](https://raw.githubusercontent.com/bgonzalezbustamante/chilean-undersecretaries/master/badges/tDL.svg)](https://training-datalab.com/)

## Overview

This repository contains a data set on Chilean undersecretaries between 1990 and 2022 in Comma-Separated Values `CSV` format with Unicode encoding `UTF-8`. The data collection was carried out based on official sources such as archives of Congress and ministries, the National Library, and press archives. Part of this data set has been used in the following articles:

- González-Bustamante, B. (2020). The Politics‐Administration Dichotomy: A Case Study of the Chilean Executive during the Democratic Post‐Transition. *Bulletin of Latin American Research, 39*(5), 582-597. DOI: [10.1111/blar.13044](https://doi.org/10.1111/blar.13044)

- González-Bustamante, B., & Olivares, A. (2016). A rotatividade de subsecretários dos ministérios no Chile (1990-2014). *Observatório de elites políticas e sociais do Brasil. NUSP/UFPR, 3*(5), 1-19. URL: [www.researchgate.net](https://www.researchgate.net/publication/321993740_A_rotatividade_de_subsecretarios_dos_ministerios_no_Chile_1990-2014)

- González-Bustamante, B., & Olivares, A. (2015). Rotación de subsecretarios en Chile: Una exploración de la segunda línea gubernamental, 1990-2014. *Revista de Gestión Pública, IV*(2), 151-190. DOI: [10.22370/rgp.2015.4.2.2230](https://doi.org/10.22370/rgp.2015.4.2.2230)

Download the [`BibTeX`](refs/BIB-Undersecretaries.bib), which includes the bibliographical data of this repository.

## Metadata and Preservation

This data set is stored with version control on a GitHub repository. Furthermore, a Digital Object Identifier is provided by Zenodo. The structure of the repository is detailed below.

``` r
chilean-undersecretaries
|-- .gitignore
|-- CHANGELOG.md
|-- chilean-undersecretaries.Rproj
|-- CITATION.cff
|-- CODE_OF_CONDUCT.md
|-- LICENSE-CC.md
|-- LICENSE-LPPL.md
|-- LICENSE-MIT.md
|-- README.md
|-- STATUS.md
|-- code
    |-- stage_1_data_cleaning.R
    |-- stage_2_eda_undersecretaries.R
|-- data
    |-- raw
        |-- chl_undersecretaries.csv    
    |-- tidy
        |-- chl_undersecretaries.csv
|-- demo
    |-- eda_undersecretaries.md
    |-- eda_undersecretaries.Rmd
    |-- eda_undersecretaries_files
        |-- figure-gfm
            |-- plot1-1.png
            |-- plot2-1.png
            |-- plot3-1.png
|-- docs
    |-- codebook_undersecretaries.pdf
    |-- codebook_undersecretaries.synctex.gz
    |-- codebook_undersecretaries.tex
|-- refs
    |-- BIB-Undersecretaries.bib
```

9 directories and 23 files.

In addition, this `README` file in Markdown `MD` format provides specific information to ensure the reusability of the data.

## Storage and Backup

The GitHub repository has controlled access with Two-Factor Authentication `2FA` with two physical USB security devices (Bastián González-Bustamante, [ORCID iD 0000-0003-1510-6820](https://orcid.org/0000-0003-1510-6820)), a mobile application (Alejandro Olivares, [ORCID iD 0000-0001-6934-2437](https://orcid.org/0000-0001-6934-2437)), and one physical USB seurity device (Carla Cisternas, [ORCID iD 0000-0001-7948-6194](https://orcid.org/0000-0001-7948-6194)). USB devices and the mobile application issue one-time passwords to generate a cryptographic authentication `FIDO2` and `U2F`.

Moreover, the repository is backed up on Hierarchical File Server `HFS` for recovery in case of incidents. This backup is located on the University of Oxford hub connected to `Code42` Cloud Backup encrypted with `256-bit AES`. The backup is performed with every change on GitHub and receives weekly light maintenance and a deep one every month. This backup will be secured until May 2024. An extension of this period will be evaluated on budget availability.

## Getting Started

### Software

We used `R v4.1.0 -- Camp Pontanezen` and the following packages: `DataExplorer v0.8.2`, `knitr v1.37`, `rmarkdown v2.11`, and `tidyverse v1.3.1`.

We recommend that users import the data directly using the code below or, if they wish, run exploratory data analysis code from the root directory using the `R` project `chilean-undersecretaries.Rproj`.

### Import Data

#### R Code

``` r
## GitHub Repository
github_1 <- "https://raw.githubusercontent.com/"
github_2 <- "bgonzalezbustamante/chilean-undersecretaries/main/data/tidy/"

## Chilean Undersecretaries Data
chilean_undersecretaries <- read.csv(paste(github_1, github_2, "chl_undersecretaries.csv", sep = ""),
                                     header = T, sep = ",", encoding = "UTF-8")
```
#### Python Code

``` python
import pandas as pd

## GitHub Repository
github_1 = "https://raw.githubusercontent.com/"
github_2 = "bgonzalezbustamante/chilean-undersecretaries/main/data/tidy/"

## Chilean Undersecretaries Data
url = github_1 + github_2 + "chl_undersecretaries.csv"
df = pd.read_csv(url, index_col=0)
```

### Replication Instructions

Folder `code` contains the exploratory data analysis in `R` format.[^1]

Folder `demo` contains the exploratory data analysis in `RMD` and `MD` formats: ([`eda_undersecretaries.md`](demo/eda_undersecretaries.md)).

The files will be overwritten if you run the R script contained in `eda_undersecretaries.Rmd`.

### Codebook

The file `chl_undersecretaries.csv` in `data/tidy` subfolder is the data set on Chilean undersecretaries between 1990 and 2022. This set contains 425 observations.[^2] The codebook is also available in [`PDF`](docs/codebook_undersecretaries.pdf).

- `id`. Unique ID for each undersecretary-portfolio observation.

- `country`. Country name.

- `name`. Officeholder name.

- `sex`. Officeholder sex.

- `president`. President in office.

- `start_president`. Start date of presidential term in the format `YYYY-MM-DD`.

- `end_president`. End date of presidential term in the format `YYYY-MM-DD`.

- `ministry`. Ministry name.[^3]

- `undersec`. Portfolio name.

- `start_undersec`. Officeholder start date in the format `YYYY-MM-DD`.

- `end_undersec`. Officeholder end date in the format `YYYY-MM-DD`.[^4]

- `party`. Officeholder political party.[^5]

A number of other variables can be calculated with aggregate data from different sources considering the appointment dates and departure of officeholders. In addition, data from González-Bustamante and Olivares (2022)[^6] can be used to compare and obtain some variables from cabinet members.

## License

The content of this project itself is licensed under a [Creative Commons Attribution 4.0 International license (CC BY 4.0)](LICENSE-CC.md), and the underlying code used to format and display that content is licensed under an [MIT license](LICENSE-MIT.md). In particular, the codebook has been compiled with XeLaTeX using a code under an [LPPL v1.3c license](LICENSE-LPPL.md).

The above implies that both data set and underlying code may be shared, reused, and adapted as long as appropriate acknowledgement is given.

## Contribute

Contributions are entirely welcome. You just need to [open an issue](https://github.com/bgonzalezbustamante/chilean-undersecretaries/issues/new) with your comment or idea.

For more substantial contributions, please fork this repository and make changes. Pull requests are also welcome.

Please read our [code of conduct](CODE_OF_CONDUCT.md) first. Minor contributions will be acknowledged, and significant ones will be considered on our contributor roles taxonomy.

## Citation

González-Bustamante, B., & Olivares, A. (2023). Data Set on Chilean Undersecretaries (1990-2022) (Version 2.1.4 -- Wandering Grass) [Data set]. University of Oxford, Universidad de Santiago de Chile (USACH), Universidad Mayor and Training Data Lab. DOI: [10.5281/zenodo.5715384](https://doi.org/10.5281/zenodo.5715384).

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

Alejandro Olivares ([ORCID iD 0000-0001-6934-2437](https://orcid.org/0000-0001-6934-2437)): Conceptualisation, funding acquisition, investigation, methodology, resources, validation, and supervision.

Carla Cisternas ([ORCID iD 0000-0001-7948-6194](https://orcid.org/0000-0001-7948-6194)): Investigation.

### Latest Revision

[March 5, 2023](CHANGELOG.md).

[^1]: It is not necessary to run the cleaning code. This script was used for the revision between `v1.5.5 -- Lively Base`, `v2.0.0 -- Shy Mud`, and `v2.1.2 -- Bold Tooth`.
[^2]: The latest release that incorporated changes in the data set is `v2.1.2 -- Bold Tooth`. The file in `data/raw` subfolder corresponds to `v1.5.5 -- Lively Base` before the update at the end of the latest presidential term in March 2022, which generates `v2.0.0 -- Shy Mud`. The difference between `v2.0.0 -- Shy Mud` and `v2.1.2 -- Bold Tooth` is just a slight correction in the `name` of the case `ID-8`.
[^3]: A number of cases experienced a change of name of the ministry during their time at the office. For example, the case `ID-261` experienced a change of name in October 2011. Considering that the observations in this set correspond to undersecretary-portfolio cases, we could have generated a new observation when that ministry changed its name. Because of the scarcity of these cases, we have not generated new observations, however, the ministries' names reflect this situation with a slash. On the other hand, the labels `SEGEGOB`, `SEGPRES`, and `SERNAM` correspond to the following ministries: *Secretaría General de Gobierno*, *Secretaría General de la Presidencia*, and *Servicio Nacional de la Mujer*.
[^4]: In `v1.5.5 -- Lively Base`, the latest presidential term was not finished yet, therefore, there were a number of missing cases in this variable. In `v2.0.0 -- Shy Mud`, we have incorporated the exact exit date or administrative censoring if applicable. For instance, case `ID-414` left office about one month before the end of the term, thereupon, a subrogant was in charge of the office until then. This data set does not consider such appointments and is therefore not incorporated into the set.
[^5]: The labels correspond to the following political parties: `EVO` (*Evolución Política*), `IC` (*Izquierda Cristiana*), `MAS` (*Movimiento Amplio Social*), `PCCh` (*Partido Comunista de Chile*), `PDC` (*Partido Demócrata Cristiano*), `PH` (*Partido Humanista*), `PPD` (*Partido por la Democracia*), `PR` (*Partido Radical*), `PRI` (*Partido Regionalista Independiente*), `PRSD` (*Partido Radical Socialdemócrata*), `PS` (*Partido Socialista de Chile*), `RN` (*Renovación Nacional*), and `UDI` (*Unión Demócrata Independiente*). Finally, `NP` is for non-partisan undersecretaries, which could be recoded as a dummy variable.
[^6]: González-Bustamante, B., & Olivares, A. (2023). Data Set on Chilean Ministers (1990-2014) (Version 3.3.7 -- Soft Dew) [Data set]. University of Oxford, Universidad de Santiago de Chile (USACH), Universidad Mayor and Training Data Lab. DOI: [10.5281/zenodo.5744536](https://doi.org/10.5281/zenodo.5744536).
