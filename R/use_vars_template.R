
#' @title Use a template to define SCSS variables
#'
#' @description Open a SCSS template to modify variable,
#'  after use \link{vars_file} to import variables and create a theme.
#'
#' @param output_file Path where to create the template, use \code{".scss"} as file extension.
#' @param theme Base theme to use, e.g. \code{"cosmo"} to start modifying the cosmo theme.
#' @param open Open the newly created file for editing? Happens in RStudio,
#'  if applicable, or via \code{utils::file.edit()} otherwise.
#'
#' @export
#'
#' @importFrom rstudioapi isAvailable navigateToFile
#' @importFrom utils file.edit
#'
#' @examples
#' \donttest{
#'
#' # this will open a template
#' # to modify variables of the flatly theme
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
                                        "slate", "spacelab", "superhero", "united", "yeti"),
                              open = interactive()) {
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
  if (isTRUE(rc) & isTRUE(open)) { # nocov start
    if (rstudioapi::isAvailable()) {
      rstudioapi::navigateToFile(file = output_file)
    } else {
      utils::file.edit(output_file)
    }
  } # nocov end
}


#' SCSS variables from a file
#'
#' @param input_file Path to SCSS file containing variables to use for creating a theme.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#' \donttest{
#'
#' # Open template and edit variables
#' use_vars_template(
#'   output_file = "custom.scss",
#'   theme = "flatly"
#' )
#'
#' # Create new theme based on the modified template
#' create_theme(
#'   theme = "flatly",
#'   vars_file(input_file = "custom.scss"),
#'   output_file = "mytheme.css"
#' )
#'
#'
#' }
vars_file <- function(input_file) {
  vars <- sass_file(
    input = input_file
  )
  class(vars) <- c("fresh_sass_vars", "fresh_file_vars", class(vars))
  vars
}


