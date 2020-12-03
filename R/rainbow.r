#' rainbow: Extract data from PRISM weather rasters (daily/monthly/annual)
#'
#' The functions in this package extract values from interpolated weather rasters from the Parameter Regression on Independent Slopes (PRISM) data product (Daly et al. 2002). Depending on the set, PRISM rasters represent interpolated values of daily, monthly, or annual weather. Extractions are done at points (versus polygons or lines, for example). \cr\cr
#' The basic input is data frame or data frame-like object, with each row representing a location and having a particular date. The function also needs to be pointed toward a folder with PRISM data. The function assumes that the rasters are arranged in the manner in which they are normally supplied by the PRISM Climate Group. That is, for example, each daily/monthly/annual raster is inside a folder corresponding to the year, which in turn is in a folder named either \code{daily} or \code{monthly}, which is inside a folder named after the variable the rasters represent (e.g., \code{tmin}, \code{vpdmax}, etc.), which is inside a folder named either \code{an81} (daily values) or \code{lt81} (monthly and annual values). Not all years or variables are necessarily available, as a license must be purchased and data acquired from the \href{https://prism.oregonstate.edu}{PRISM Climate Group}. \cr\cr
#' The function can extract values corresponding to the day/month/year of each record, plus (optionally) a user-specified window of time prior to the day/month/year of each record. For example, you could use this to extract daily climate data for a site collected on April 22, 2014, and all days prior up to 10 years (April 23, 2004). This function is really a fancy wrapper for \code{\link[terra]{extract}}, but it does the tough job of getting the directory structures right, pulling all needed rasters, and efficiently grouping records to speed extraction. \cr\cr
#' The function does not assume that data for all PRISM years are available (i.e., if you only have rights to the data from, say, 2015 to 2018), but it does assume that all relevant rasters for a particular year are available within each yearly folder. If rasters preceding a date only partially cover the window, then values for the part covered will be extracted. For example if you try to extract annual values for a window spanning 2010 to 2020 but only have available rasters for 1981 to 2018, then values for 2010 to 2018 will be extracted.
#'
#' Create an issue on \href{https://github.com/adamlilith/rainbow/issues}{GitHub}.
#' @details
#' 		\code{\link{rbExtractDaily}}: Extract values of daily weather variables. \cr
#' 		\code{\link{rbExtractMonthly}}: Extract values of monthly weather variables. \cr
#' 		\code{\link{rbExtractYearly}}: Extract values of annual weather variables. \cr
#' @references Daly, C., Gibson, W.P., Taylor, G.H., Johnson, G.L., and Pasteris, P.  2002.  A knowledge-based approach to the statistical mapping of climate. \emph{Climate Research} 22:99-113. \href{http://dx.doi.org/10.3354/cr022099}{DOI: 10.3354/cr022099}
#' @docType package
#' @author Adam B. Smith
#' @name rainbow
NULL
