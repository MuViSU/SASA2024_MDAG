# Multivariate Data Analysis Group (MDAG) workshop

# User-friendly biplots in R with biplotEZ

<img src="logo.png" align="right" width="150" />

Biplots are valuable visualisation tools in exploratory data analysis. In its simplest form, biplots are regarded as generalised scatterplots for more than two variables. The rows of a data matrix are represented as sample points while the columns are represented as variable axes. Although the interpretation in terms of samples and variable axes dates from the work of Gower in the 1990’s, the application has been limited by the availability of EZ-to-use software. In this presentation we will look at the basic linear algebra behind popular forms of biplots: Principal Component Analysis (PCA), Canonical Variate Analysis (CVA) and biplots of Correspondence Analysis (CA) amongst others. The availability of software limits biplot application to expert users. Providing an EZier to use package for practitioners wanting to visualise their data, encouraged the development of a user-friendly R package. In this workshop you will be introduced to the main aspects of biplot methodology and receive access to the newly developed functions of the biplotEZ R package with applications on real data in various contexts.

**Authors**: 

Sugnet Lubbe, Niël le Roux, Johané Nienkemper-Swanepoel, Raeesa Ganey, Ruan Buys, Zoë-Mae Adams and Peter Manefeldt

## Workshop programme

| Time | Topic | Presenter |
|------|-------|-------|
|14:00-14:05|	Introduction| Sugnet Lubbe |
|14:05-15:05|	Principal component analysis biplots| Raeesa Ganey and Ruan Buys|
|15:05-15:30|	Correspondence analysis biplots| Johané Nienkemper-Swanepoel |
|15:30-16:00|	BREAK|
|16:00-16:30|	Canonical variate analysis biplots| Zoë-Mae Adams and Peter Manefeldt |
|16:30-16:40|	1D biplots| Peter Manefeldt |
|16:40-16:50|	3D biplots| Zoë-Mae Adams |
|16:50-17:00|	Other biplots and conclusion| Sugnet Lubbe |

<a href="https://MuViSU.github.io/SASA2024_MDAG/MDAG2024_biplotEZ.html" target="_blank">MDAG workshop slides</a>

<a href="https://github.com/MuViSU/SASA2024_MDAG/tree/6d5a88a357a1d0c13c8eb2effa0ee58aa690ecd5/scripts" target="_blank">MDAG workshop script files</a>

## Getting started

Ensure that you have a recently updated version of R Studio and install the newest version of `biplotEZ` (version 2.2):

```
install.packages("biplotEZ")
```

The development version is available on GitHub:

```
library(devtools)
devtools::install_github("MuViSU/biplotEZ")
```

## Additional information and vignettes

<a href="https://cran.r-project.org/web/packages/biplotEZ/index.html" target="_blank">CRAN link</a>

## Reporting

If you have a suggestion or a bug report please post this as an [issue](https://github.com/MuViSU/biplotEZ/issues) on GitHub.
