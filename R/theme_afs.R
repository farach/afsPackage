#' theme_afs is an AFS themed ggplot2 theme
#'
#' @return ggplot object
#' @export theme_afs
#'
#' @examples
#' ggplot(cars, aes(speed, dist)) +
#'   geom_point(alpha = 0.75) +
#'   labs(
#'     title = "Cars Example Theme", subtitle = "Subtitle example",
#'     caption = "Caption Example\nMore lines here"
#'   ) +
#'   theme_afs()
#'   acn_logo()
#'

# We need to load the Accenture fonts to use them in the plot.
# sysfonts::font_add(
#   family = "graphik-bold",
#   regular = system.file("Graphik_TTF_161229", "Graphik_Bold.ttf", package = "afsPackage")
# )
# sysfonts::font_add(
#   family = "graphik-regular",
#   regular = system.file("Graphik_TTF_161229", "Graphik_Regular.ttf", package = "afsPackage")
# )
# sysfonts::font_add(
#   family = "spectra-regular",
#   regular = system.file("GT_Sectra_Fine", "GT_Sectra_Fine_Regular.otf", package = "afsPackage")
# )
#
# showtext::showtext_auto()

theme_afs <- function() {
  ggplot2::theme_minimal() %+replace%
    ggplot2::theme(
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(
        color = "#cbcbcb",
        linetype = "dashed"
      ),
      panel.grid.major.x = ggplot2::element_line(
        color = "#cbcbcb",
        linetype = "dashed"
      ),
      panel.background = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(color = "white", size = 3),
      strip.text = ggplot2::element_text(
        color = "#7500c0",
        family = "graphik-regular"
      ),
      axis.ticks = ggplot2::element_blank(),
      plot.title = ggplot2::element_text(
        size = 20,
        color = "#460073",
        hjust = 0.5,
        margin = ggplot2::margin(0, 0, 10, 0),
        family = "graphik-bold"
      ),
      plot.subtitle = ggplot2::element_text(
        size = 14,
        color = "#460073",
        hjust = 0.5,
        margin = ggplot2::margin(0, 0, 10, 0),
        family = "spectra-regular"
      ),
      plot.caption = ggplot2::element_text(
        size = 11,
        color = "#460073",
        margin = ggplot2::margin(20, 0, 0, 0),
        family = "graphik-regular"
      ),
      legend.text.align = 0,
      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_text(
        color = "#460073",
        family = "graphik-regular"
      ),
      legend.key = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(
        color = "#460073",
        family = "graphik-regular"
      ),
      plot.margin = ggplot2::margin(25, 25, 10, 25),
      axis.title = ggplot2::element_text(
        family = "graphik-regular",
        size = 10,
        color = "#4B636E"
      ),
      axis.text = ggplot2::element_text(
        family = "graphik-regular",
        size = 9,
        color = "#4B636E"
      ),
      axis.text.x = ggplot2::element_text(
        color = "#96968c"
      ),
      axis.text.y = ggplot2::element_text(
        color = "#96968c"
      ),
      axis.title.y = ggplot2::element_text(
        margin = ggplot2::margin(0, 20, 0, 0),
        color = "#96968c",
        angle = 90
      ),
      axis.title.x = ggplot2::element_text(
        margin = ggplot2::margin(20, 0, 0, 0),
        color = "#96968c"
      )
    )
}
