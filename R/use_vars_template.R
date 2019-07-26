
#' Use a template to define SCSS variables
#'
#' @param output_file Path where to create the template, use \code{".scss"} as file extension.
#' @param theme Base theme to use, e.g. \code{"cosmo"} to start modifying the cosmo theme.
#'
#' @export
#'
#' @importFrom rstudioapi isAvailable navigateToFile
#'
#' @examples
#'
#' \donttest{
#'
#' use_vars_template(
#'   output_file = "custom.scss",
#'   theme = "flatly"
#' )
#'
#' }
#'
use_vars_template <- function(output_file,
                              theme = c("default", "cerulean", "cosmo", "cyborg", "darkly", "flatly",
                                        "journal", "lumen", "paper", "readable", "sandstone", "simplex",
                                        "slate", "spacelab", "superhero", "united", "yeti")) {
  theme <- match.arg(theme)
  if (identical(theme, "default")) {
    rc <- file.copy(
      from = system.file(
        "assets/bootstrap3/default/stylesheets/bootstrap/_variables.scss",
        package = "fresh"
      ),
      to = output_file
    )
  } else {
    rc <- file.copy(
      from = system.file(
        "assets/bootstrap3", theme, "_variables.scss",
        package = "fresh"
      ),
      to = output_file
    )
  }
  if (isTRUE(rc) & rstudioapi::isAvailable()) {
    rstudioapi::navigateToFile(file = output_file)
  }
}


