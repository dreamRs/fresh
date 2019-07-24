
#' @title Create a custom Bootstrap theme
#'
#' @description Allow to customize some CSS variables from Bootstrap themes to be included in Shiny applications.
#'
#' @param theme Base theme to use.
#' @param ... Lists of CSS variables declared with \code{\link{bs_vars_color}},  \code{\link{bs_vars_nav}}.
#' @param output_file Specifies path to output file for compiled CSS.
#'
#' @return If \code{output_file = NULL}, the function returns a string value of the compiled CSS.
#'  If the output path is specified, the compiled CSS is written to that file and \code{invisible()} is returned.
#'
#' @export
#'
#' @importFrom sass sass sass_options
#'
#' @examples
create_theme <- function(theme = c("default", "cerulean", "cosmo", "cyborg", "darkly", "flatly",
                                   "journal", "lumen", "paper", "readable", "sandstone", "simplex",
                                   "slate", "spacelab", "superhero", "united", "yeti"),
                         ...,
                         output_file = NULL) {
  theme <- match.arg(theme)
  vars <- list(...)
  vars <- Reduce(c, vars)
  if (identical(theme, "default")) {
    input <- list(
      vars,
      bootstrap_scss()
    )
  } else {
    input <- list(
      vars,
      bootswatch_vars_scss(theme),
      bootstrap_scss(),
      bootswatch_scss(theme)
    )
  }
  sass(
    input = input,
    output = output_file,
    options = sass_options(output_style = "compressed")
  )
}

#' @importFrom sass sass_file
bootstrap_scss <- function() {
  sass_file(
    input = system.file(
      "assets/bootstrap3/default/stylesheets/_bootstrap.scss",
      package = "fresh"
    )
  )
}

#' @importFrom sass sass_file
bootswatch_vars_scss <- function(theme) {
  sass_file(
    input = system.file(
      "assets/bootstrap3", theme, "_variables.scss",
      package = "fresh"
    )
  )
}

#' @importFrom sass sass_file
bootswatch_scss <- function(theme) {
  sass_file(
    input = system.file(
      "assets/bootstrap3", theme, "_bootswatch.scss",
      package = "fresh"
    )
  )
}


