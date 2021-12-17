#' Import Fonts for Use in Plots and Charts
#'
#' @description
#'
#' A function to load fonts for ease of use.
#'
#'
#' @usage import_afs_fonts()
#'
#'
#' @export
#' @import extrafont
import_afs_fonts <- function() {
  font_dir <- system.file("fonts", package="afsPackage")

  suppressWarnings(suppressMessages(extrafont::font_import(font_dir, prompt=FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      font_dir)
  )

}
