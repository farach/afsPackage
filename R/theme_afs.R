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
sysfonts::font_add(
  family = "graphik-bold",
  regular = "Graphik_TTF_161229/Graphik_Bold.ttf"
)
sysfonts::font_add(
  family = "graphik-regular",
  regular = "Graphik_TTF_161229/Graphik_Regular.ttf"
)
sysfonts::font_add(
  family = "spectra-regular",
  regular = "GT_Sectra_Fine/GT_Sectra_Fine_Regular.otf"
)

showtext::showtext_auto()

library(ggplot2)

theme_afs <- function() {
  theme_minimal() %+replace%
    theme(
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(
        color = "#cbcbcb",
        linetype = "dashed"
      ),
      panel.grid.major.x = element_line(
        color = "#cbcbcb",
        linetype = "dashed"
      ),
      panel.background = element_blank(),
      strip.background = element_rect(color = "white", size = 3),
      strip.text = element_text(
        color = "#7500c0",
        family = "graphik-regular"
      ),
      axis.ticks = element_blank(),
      plot.title = element_text(
        size = 20,
        color = "#460073",
        hjust = 0.5,
        margin = margin(0, 0, 10, 0),
        family = "graphik-bold"
      ),
      plot.subtitle = element_text(
        size = 14,
        color = "#460073",
        hjust = 0.5,
        margin = margin(0, 0, 10, 0),
        family = "spectra-regular"
      ),
      plot.caption = element_text(
        size = 11,
        color = "#460073",
        margin = margin(20, 0, 0, 0),
        family = "graphik-regular"
      ),
      legend.text.align = 0,
      legend.background = element_blank(),
      legend.title = element_text(
        color = "#460073",
        family = "graphik-regular"
      ),
      legend.key = element_blank(),
      legend.text = element_text(
        color = "#460073",
        family = "graphik-regular"
      ),
      plot.margin = margin(25, 25, 10, 25),
      axis.title = element_text(
        family = "graphik-regular",
        size = 10,
        color = "#4B636E"
      ),
      axis.text = element_text(
        family = "graphik-regular",
        size = 9,
        color = "#4B636E"
      ),
      axis.text.x = element_text(
        color = "#96968c"
      ),
      axis.text.y = element_text(
        color = "#96968c"
      ),
      axis.title.y = element_text(
        margin = margin(0, 20, 0, 0),
        color = "#96968c",
        angle = 90
      ),
      axis.title.x = element_text(
        margin = margin(20, 0, 0, 0),
        color = "#96968c"
      )
    )
}
