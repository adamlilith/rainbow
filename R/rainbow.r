#' rainbow: Extract data from PRISM weather rasters (daily/monthly/annual)
#'
#' @description These functions extract values from interpolated weather rasters from the Parameter Regression on Independent Slopes (PRISM) data product (Daly et al. 2002). Depending on the set, PRISM rasters represent interpolated values of daily, monthly, or annual weather. Extractions are done at points (versus polygons or lines, for example). Extractions can be for specific dates or a user-defined temporal window preceding each date plus focal dates (e.g., each of the 10 days before the date, plus the date). \cr\cr
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
