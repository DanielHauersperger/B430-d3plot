#' Bar plot made with D3
#'
#' @param data A Dataset to use for plotting. Should be a dataframe
#' @param x_var Attribute to place on the x axis
#' @param title Title for the plot, placed above plot
#' @param x_lab X axis label. Default is *x_var's* object name
#' @param y_lab Y axis label. Default is "Frequency"
#' @param color Color of the bars. This value can be a hex color, color name, or the column name from the dataframe
#' @param border Color of the border of the bars
#' @param opacity transparency level
#' @param transition_duration Duration for the bars to transtion
#'
#' @return An HTML widget that displays a bar plot made with D3.js
#' @export
#'
#' @import dplyr
#' @import rlang
#' @importFrom r2d3 r2d3
#'
#' @examples
#' # not run:
#' # d3_histogram(mtcars, mpg)
d3_histogram <- function (data, x_var,
                          title = NULL, x_lab = NULL, y_lab = NULL,
                          color = "black", border = NULL, opacity = 1,
                          transition_duration = 0) {

  x_quo <- rlang::enquo(x_var)

  x_name <- rlang::quo_name(rlang::enquo(x_var))

  if (is.null(x_lab)) x_lab <- x_name
  if (is.null(y_lab)) y_lab <- "Frequency"

  n_bins <- sqrt(nrow(data))

  r2d3::r2d3(data = dplyr::pull(data, !!x_quo),
       script = "inst/d3_histogram.js",
       height = 500, width = 600,
       options = list(x_name = x_name,
                      title = list(title = title),
                      xaxis = list(title = x_lab),
                      yaxis = list(title = y_lab),
                      bar = list(color = color,
                                 border = border,
                                 opacity = opacity),
                      n_bins = n_bins,
                      transition_duration = transition_duration))
}
