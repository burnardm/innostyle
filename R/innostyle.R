require("ggplot2")
require("stringr")
require("purrr")

# The following functions are borrowed from stackoverflow user spren9er
# https://stackoverflow.com/questions/21174625/ggplot-how-to-set-default-color-for-all-geoms

replace_geom_aes_defaults <- function(name, old_aes, new_aes) {
  matching_geoms <-
    purrr::map(geom_aes_defaults(), name) %>%
    purrr::compact() %>%
    purrr::keep(~ !is.na(.) & . == old_aes)
  geoms <- gsub("^Geom(.*)", "\\1", names(matching_geoms))
  purrr::walk(geoms, update_geom_defaults, setNames(list(new_aes), name))
}

geom_aes_defaults <- function() {
  geom_names <- apropos("^Geom", ignore.case = FALSE)
  geoms <- mget(geom_names, env = asNamespace("ggplot2"))
  purrr::map(geoms, ~ .$default_aes)
}

geom_aes_defaults()
