
#' @title Use a template to define SCSS variables
#'
#' @description Open a SCSS template to modify variables,
#'  after use \link{bs_vars_file} to import those variables and create a theme.
#'
#' @param output_file Path where to create the template, use \code{".scss"} as file extension.
#' @param theme Base theme to use, e.g. \code{"cosmo"} to start modifying the cosmo theme.
#' @param open Open the newly created file for editing? Happens in RStudio,
#'  if applicable, or via \code{utils::file.edit()} otherwise.
#'
#' @note After use \code{\link{bs_vars_file}} to use the template.
#'
#' @export
#'
#' @importFrom rstudioapi isAvailable navigateToFile
#' @importFrom utils file.edit
#'
#' @examples
#' # For example, we use a temporary file
#' custom <- tempfile(fileext = ".scss")
#'
#' # this will open a template
#' # to modify variables of the flatly theme
#' use_vars_template(
#'   output_file = custom,
#'   theme = "flatly"
#' )
#'
#' # after use bs_vars_file() to use the template
#'
#' # clean up
#' unlink(custom)
use_vars_template <- function(output_file,
                              theme = c("default", "cerulean", "cosmo", "cyborg", "darkly", "flatly",
                                        "journal", "lumen", "paper", "readable", "sandstone", "simplex",
                                        "slate", "spacelab", "superhero", "united", "yeti"),
                              open = interactive()) {
  theme <- match.arg(theme)
  if (identical(theme, "default")) {
    rc <- file.copy(
      from = system.file(
        "assets/bootstrap-3.4.1/default/stylesheets/bootstrap/_variables.scss",
        package = "fresh"
      ),
      to = output_file
    )
  } else {
    rc <- file.copy(
      from = system.file(
        "assets/bootstrap-3.4.1", theme, "_variables.scss",
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


#' Bootstrap variables from a file
#'
#' @param input_file Path to SCSS file containing variables to use for creating a theme.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#' my_vars <- file.path(tempdir(), "custom-vars.scss")
#' my_theme <- file.path(tempdir(), "theme.css")
#'
#' # Open template and edit variables
#' use_vars_template(
#'   output_file = my_vars,
#'   theme = "flatly"
#' )
#'
#' # Create new theme based on the modified template
#' create_theme(
#'   theme = "flatly",
#'   bs_vars_file(input_file = my_vars),
#'   output_file = my_theme
#' )
#'
#'
#' # Clean up
#' unlink(my_vars)
#' unlink(my_theme)
bs_vars_file <- function(input_file) {
  vars <- sass_file(
    input = input_file
  )
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars_file", class(vars))
  vars
}


