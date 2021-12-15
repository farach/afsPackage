#' acn_logo
#'
#' @return adds Accenture logo to bottom left of a plot
#' @export
#'
#' @examples
#'

acn_logo <- function() {
  grid::grid.raster(
    magick::image_read("./images/accenture_logo_black.svg"),
    x = 0.05,
    y = 0.03,
    just = c("left", "bottom"),
    width = unit(1, "inches"),
    height = unit(0.28, "inches")
  )
}
