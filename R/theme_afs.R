#' theme_afs
#' Creates AFS themed ggplot2 theme
#'
#' @param font_family Choose which font you want to use: "Classic", "Modern".
#' Default is "Modern"
#'
#' @return ggplot object
#' @export theme_afs
#'
#' @examples
#' ggplot(cars, aes(speed, dist)) +
#' geom_point(alpha = 0.75) +
#' labs(title = "Cars Example Theme", subtitle = "Subtitle example",
#' caption = "Caption Example\nMore lines here"
#' ) +
#' theme_afs()
theme_afs <- function(font_family) {
  theme_minimal()
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
      #hjust = 0,
      color = "#4B636E",
      size = 12
    ),
    axis.ticks = element_blank(),
    plot.title = element_text(
      # family = font,
      size = 20,
      face = "bold",
      hjust = 0.5,
      vjust = 2,
      color = "#6a1c91"
    ),
    plot.subtitle = element_text(
      # family = font,
      size = 14,
      color = "#6a1c91",
      hjust = 0.5
    ),
    plot.caption = element_text(
      # family = font,
      size = 9,
      hjust = 1,
      color = "#6a1c91"
    ),
    axis.title = element_text(
      # family = font,
      size = 10,
      color = "#4B636E"
    ),
    axis.text = element_text(
      # family = font,
      size = 9,
      color = "#4B636E"
    ),
    axis.text.x = element_text(
      margin = margin(5, b = 10)
    ),
    legend.text.align = 0,
    legend.background = element_blank(),
    legend.title = element_text(
      # family = font,
      size = 18,
      color = "#4B636E"
    ),
    legend.key = element_blank(),
    legend.text = element_text(
      # family = font,
      size = 18,
      color = "#4B636E"
    ),
    plot.margin = unit(c(1, 1, 1.5, 1),"cm"),
    axis.title.y = element_text(margin = margin(t = 0, r = 10, b = 0, l = 0),
                                angle = 90)
  )
}


#logo <- image_read("../afs_logo.png")

#p1
#grid.raster(logo, x = 0.02, y = 0.01, just = c('left', 'bottom'), width = unit(1, 'inches'))
