
#' Create a theme for bs4Dash
#'
#' @inheritParams bslib::bs_theme
#' @param ... Additional AdminLTE variables.
#'
#' @return Returns a [sass::sass_bundle()] (list-like) object.
#' @export
#'
#' @importFrom bslib bs_theme bs_add_variables bs_add_rules bs_theme_dependencies
#'
#' @example examples/bs4Dash_theme-ex.R
bs4Dash_theme <- function(primary = NULL,
                          secondary = NULL,
                          success = NULL,
                          info = NULL,
                          warning = NULL,
                          danger = NULL,
                          ...) {
  theme <- bs_theme(
    version = 4,
    preset = "bootstrap",
    primary = primary,
    secondary = secondary,
    success = success,
    info = info,
    warning = warning,
    danger = danger
  )
  theme <- bs_add_variables(
    theme = theme,
    ...
  )
  theme <- bs_add_rules(
    theme = theme,
    adminlte3_scss()
  )
  class(theme) <- c(class(theme), "bs4Dash_theme")
  return(theme)
}
