#' theme_InnoBeige()
#'
#' This ggplot theme has a beige background (#FEFEF1) and should be used
#' with the standard colour set from this package (InnoColours() or
#' InnoColours(set="standard"))
#' ** Warning ** calling this theme will adjust the default settings for
#' all geom colour and fill values. To reset this you need to restart your R
#' session and reload the ggplot2 (or tidyverse) package.
#' @param NA No parameters.
#' @keywords innorenew, ggplot, dark, theme
#' @export
#' @examples
#' ggplot(data=data, aes(x=x, y=y)) + theme_InnoBeige() + geom_point()

theme_InnoBeige <- function() {
  title_font <- "sans"
  font <- "sans"

  replace_geom_aes_defaults("colour", "black", "#4F4F4F")
  replace_geom_aes_defaults("colour", "grey20", "#4F4F4F")
  replace_geom_aes_defaults("colour", "grey35", "#4F4F4F")
  replace_geom_aes_defaults("colour", "grey50", "#4F4F4F")
  replace_geom_aes_defaults("colour", "#3366FF", "#4182B6")

  replace_geom_aes_defaults("fill", "black", "#4F4F4F")
  replace_geom_aes_defaults("fill", "grey20", "#4F4F4F")
  replace_geom_aes_defaults("fill", "grey35", "#4F4F4F")
  replace_geom_aes_defaults("fill", "grey50", "#4F4F4F")
  replace_geom_aes_defaults("fill", "grey60", "#4F4F4F")
  replace_geom_aes_defaults("fill", "#3366FF", "#4182B6")

  ggplot2::theme_classic() %+replace%

    ggplot2::theme(
      axis.line = element_line(colour="#4F4F4F"),
      axis.ticks = element_line(colour="#4F4F4F"),
      text = element_text(colour="#4F4F4F"),
      panel.grid = element_line(colour="#4F4F4F", linewidth = 0.25),
      plot.background = element_rect(fill = "#EFEFE1"),
      panel.background = element_rect(fill = "#EFEFE1", linewidth = 0),
      legend.background = element_rect(fill = "#EFEFE1", linewidth = 0),

      plot.title = element_text(
        family = title_font,
        size = 20,
        face = "bold",
        hjust = 0,
        margin = margin(t = 0, r = 0, b = 2, l = 0, unit = "pt")
      ),

      plot.subtitle = element_text(
        family = title_font,
        size = 14,
        hjust = 0,
        margin = margin(t = 1, r = 0, b = 2, l = 0, unit = "pt")
      ),

      plot.caption = element_text(
        family = font,
        size = 10,
        face = 'italic',
        hjust = 1
      ),

      axis.title = element_text(
        family = font,
        size = 12
      ),

      axis.text = element_text(
        family = font,
        size = 10
      )

    )
}
