#' theme_InnoDark()
#'
#' This ggplot theme has dark grey background (#4F4F4F) and should be used
#' with the bright colour set from this package (InnoColours(set="bright"))
#' ** Warning ** calling this theme will adjust the default settings for
#' all geom colour and fill values. To reset this you need to restart your R
#' session and reload the ggplot2 (or tidyverse) package.
#' @param NA No parameters.
#' @keywords innorenew, ggplot, dark, theme
#' @export
#' @examples
#' ggplot(data=data, aes(x=x, y=y)) + theme_InnoDark() + geom_point()

theme_InnoDark <- function() {
  title_font <- "sans"
  font <- "sans"

  ggplot2::replace_geom_aes_defaults("colour", "black", "#EFEFE1")
  ggplot2::replace_geom_aes_defaults("colour", "grey20", "#EFEFE1")
  ggplot2::replace_geom_aes_defaults("colour", "grey35", "#EFEFE1")
  ggplot2::replace_geom_aes_defaults("colour", "grey50", "#EFEFE1")
  ggplot2::replace_geom_aes_defaults("colour", "#3366FF", "#4182B6")

  ggplot2::replace_geom_aes_defaults("fill", "black", "#EFEFE1")
  ggplot2::replace_geom_aes_defaults("fill", "grey20", "#EFEFE1")
  ggplot2::replace_geom_aes_defaults("fill", "grey35", "#EFEFE1")
  ggplot2::replace_geom_aes_defaults("fill", "grey50", "#EFEFE1")
  ggplot2::replace_geom_aes_defaults("fill", "#3366FF", "#4182B6")


  ggplot2::theme_classic() %+replace%

    ggplot2::theme(

      axis.line = element_line(colour="#EFEFE1"),
      legend.box.background = element_blank(),
      axis.ticks = element_line(colour="#EFEFE1"),
      text = element_text(colour="#EFEFE1"),
      panel.grid = element_line(colour="#EFEFE1", linewidth = 0.25),
      plot.background = element_rect(fill = "#4F4F4F"),
      panel.background = element_rect(fill = "#4F4F4F", linewidth = 0),
      legend.background = element_rect(fill = "#4F4F4F", linewidth = 0),

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
