#' InnoColours()
#'
#' This function returns one of two versions of the InnoRenew colour palette
#' for creating figures (it does not include grey or beige). There are
#' 10 colours in each set, though it is not recommended to go beyond 5.
#' @param set defaults to "standard", "bright" returns a lighter tint
#' suitable for dark backgrounds
#' @keywords colour, color, colourblindness, palette
#' @export
#' @examples
#' Used in any manual scale that takes a colour in a ggplot() plot...
#' ggplot(data=data, aes(x=x, y=y, fill=group, colour=group)) +
#' theme_InnoLight() +
#' geom_col() +
#' scale_fill_manual(values = InnoColours())
#' scale_colour_manual(values = InnoColours(set="bright"))


InnoColours <- function(set="standard") {
  `%notin%` <- Negate(`%in%`)
  tryCatch(
    {
      expr = {
        palette = c("#724B9E",
                    "#B54146",
                    "#4182B6",
                    "#40B4AE",
                    "#80B641",
                    "#C35DCF",
                    "#CF5E44",
                    "#4C6BCF",
                    "#43D178",
                    "#D1CB1F"
                    )
        set = stringr::str_to_lower(set)
        if(set %notin% c("standard", "bright", NULL)) {
          message("Defined set not available. Returning the default set.")
          return(palette)
        }
        if(set == "bright") {
          palette = c("#AE72F2",
                      "#F2575F",
                      "#57ACF2",
                      "#57F2EA",
                      "#AAF257",
                      "#EDA240",
                      "#1515E8",
                      "#63DB83",
                      "#DED8A8",
                      "#D4197A")
          return(palette)
        }
        return(palette)
      }
      error = function(e) {
        message("An error was caught!")
        message(e)
      }
      warning = function(w) {
        message("An warning was caught!")
        message(w)
      }
      rm(`%notin%`)
    }
  )
}
InnoColors <- InnoColours
