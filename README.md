# chilean-undersecretaries
**Data Set on Chilean Undersecretaries (1990-2014)**

[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](STATUS.md) [![Version](https://img.shields.io/badge/version-v1.2.0-blue.svg)](CHANGELOG.md) [![GitHub issues](https://img.shields.io/github/issues/bgonzalezbustamante/chilean-undersecretaries.svg)](https://github.com/bgonzalezbustamante/chilean-undersecretaries/issues/) [![GitHub issues-closed](https://img.shields.io/github/issues-closed/bgonzalezbustamante/chilean-undersecretaries.svg)](https://github.com/bgonzalezbustamante/chilean-undersecretaries/issues?q=is%3Aissue+is%3Aclosed) [![DOI](https://img.shields.io/badge/DOI-TBC-blue)](CHANGELOG.md) [![License](https://img.shields.io/badge/license-CC--BY--4.0-black)](LICENSE.md) [![R](https://img.shields.io/badge/made%20with-R%20v4.1.0-1f425f.svg)](https://cran.r-project.org/) [![Latex](https://img.shields.io/badge/made%20with-LaTeX-1f425f.svg)](https://www.latex-project.org/)

## Overview

This repository contains a data set on Chilean undersecretaries between 1990 and 2014 in Comma-Separated Values (CSV) format with Unicode encoding (UTF-8). The data collection was carried out based on official sources such as archives of Congress and ministers, the National Library, and press archives. Part of this data has been used in the following articles:

- González-Bustamante, B. (2020). The Politics‐Administration Dichotomy: A Case Study of the Chilean Executive during the Democratic Post‐Transition. *Bulletin of Latin American Research, 39*(5), 582-597. DOI: [10.1111/blar.13044](https://doi.org/10.1111/blar.13044)

- González-Bustamante, B., & Olivares, A. (2016). A rotatividade de subsecretários dos ministérios no Chile (1990-2014). *Observatório de elites políticas e sociais do Brasil. NUSP/UFPR, 3*(5), 1-19. URL: [www.researchgate.net](https://www.researchgate.net/publication/321993740_A_rotatividade_de_subsecretarios_dos_ministerios_no_Chile_1990-2014)

- González-Bustamante, B., & Olivares, A. (2015). Rotación de subsecretarios en Chile: Una exploración de la segunda línea gubernamental, 1990-2014. *Revista de Gestión Pública, IV*(2), 151-190. DOI: [10.22370/rgp.2015.4.2.2230](https://doi.org/10.22370/rgp.2015.4.2.2230)

## Metadata and Preservation

This data is stored with version control on a GitHub repository. Furthermore, a Digital Object Identifier (DOI) is provided by Zenodo. The structure of the repository is detailed below.

*chilean-undersecretaries* \
|-- CHANGELOG.md \
|-- chilean-undersecretaries.Rproj \
|-- CITATION.cff \
|-- code \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- stage_1_data_cleaning.R \
|-- data \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- chl_undersecretaries.csv \
|-- .gitignore \
|-- LICENSE.md \
|-- README.md

XX directories and XX files.

In addition, this README file in Markdown (MD) format provides specific information to ensure the reusability of the data.

## Store and Backup

The GitHub repository has controlled access with Two-Factor Authentication (2FA) with one physical USB security device and a mobile application. Both issue one-time passwords to generate a cryptographic authentication FIDO 2 and U2F.

Moreover, the repository is backed up on Hierarchical File Server (HFS) for recovery in case of incidents. This backup is located on the University of Oxford hub connected to Code42 Cloud Backup encrypted with 256-bit AES. The backup is performed with every release on GitHub and receives weekly light maintenance and a deep one every month. This backup will be secured until May 2024. An extension of this period will be evaluated on budget availability.

## Data Sharing

This data is released under a [Creative Commons Attribution 4.0 International license (CC BY 4.0)](LICENSE.md). This open-access license allows the data to be shared, reused, adapted as long as appropriate acknowledgement is given.

## Citation

González-Bustamante, B., & Olivares, A. (2021). Data Set on Chilean Undersecretaries (1990-2014) (Version 2.0.0 – “Fragrant Disk”) [Data set]. https://doi.org/TBC

## Authors

Bastián González-Bustamante \
bastian.gonzalezbustamante@politics.ox.ac.uk \
https://orcid.org/0000-0003-1510-6820 \
https://bgonzalezbustamante.com 

Alejandro Olivares \
alejandro.olivares@uct.cl \
https://orcid.org/0000-0001-6934-2437 

## CRediT - Contributor Roles Taxonomy

Bastián González-Bustamante \
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/conceptualization.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/data_curation.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/methodology.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/project_administration.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/resources.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/computation.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/testing.png" align="left" width="55" /> <br /><br />

Alejandro Olivares \
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/conceptualization.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/investigation.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/methodology.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/project_administration.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/resources.png" align="left" width="55" />
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/supervision.png" align="left" width="55" /> <br /><br />

Carla Cisternas \
<img src="https://github.com/bgonzalezbustamante/open_research_badges/blob/master/img/badges/investigation.png" align="left" width="55" /> <br /><br />

### Latest Revision

[November 16, 2021](CHANGELOG.md).
