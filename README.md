# rainbow
<img align="right" src="prism.png" height="190"/>
This R package is for extracting daily, monthly, and annual climate data from the proprietary version of the **Parameter Regression on Independent Slopes** or **PRISM** climate raster data set for the coterminous United States (Daly et al. 2002). The PRISM Climate Group (https://prism.oregonstate.edu) is based at Oregon State UNiversity. Users must have a licensed copy of the PRISM data set.  

The package contains three exported functions:
* `rbExtractDaily`: Extract daily values
* `rbExtractMonthly`: Extract monthly values
* `rbExtractYearly`: Extract annual values

Each function operates very similarly and requires:
* Pointers to the base folder with PRISM data;
* The name of the PRISM version to extract (i.e., `AN81` or `LT81`);
* Name(s) of the variables(s) to be extracted; and
* A data frame with coordinates and dates.

Users can extract data for the day/month/year of each record plus all preceeding days/months/years across a user-defined temporal window. For example, you could use `rbExtractDaily` to get all daily minimum temperature (`tmin`) values for a location for April 24th, 2014 and the 280 days prior to that date. Or, for example, you could use `rbExtractMonthly` to get the mean monthly value of minimum temperature for April of 2014 and the 18 months preceeding that. Or, using `rbExtractYearly`, you could obtain annual values for 2014 and the 10 years prior to that.  Of course, to get the values for the specied dates and windows preceeding them, you would need to possess the appropriate rasters.

The `rainbow` package uses functions from `lubridate` for handling dates and `terra` for handling rasters.

### Installation ###
If you have RTools installed on your computer, you can install this package in R using this command:

`remotes::install_github('adamlilith/enmSdm', dependencies=TRUE)`  

If for some reason this does not work, you can install the package by downloading the latest zip/tar file from the `zipTarFiles` directory and installing it manually.

Adam B. Smith

### Literature cited ###
Daly, C., Gibson, W.P., Taylor, G.H., Johnson, G.L., and Pasteris, P.  2002.  A knowledge-based approach to the statistical mapping of climate.  *Climate Research* 22:99-113. [DOI: 10.3354/cr022099](http://dx.doi.org/10.3354/cr022099)
