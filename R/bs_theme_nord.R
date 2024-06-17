
#' Bootstrap Theme based on Nord palette
#'
#' @param version The major version of Bootstrap to use, see [bslib::bs_theme()].
#' @param preset The name of a theme preset, default to "bootstrap".
#'
#' @return Returns a [sass::sass_bundle()] (list-like) object.
#' @export
#'
#' @name bs-theme-nord
#'
#' @example examples/bs_theme_nord-ex.R
bs_theme_nord_light <- function(version = bslib::version_default(), preset = "bootstrap") {
  bs_theme(
    version = version,
    preset = preset,
    primary = "#5E81AC",
    secondary = "#B48EAD",
    info = "#88C0D0",
    danger = "#BF616A",
    warning = "#D08770",
    success = "#A3BE8C",
    "navbar-bg" = "#5E81AC",
    "navbar-dark-color" = "#ECEFF4",
    "navbar-dark-color" = "#ECEFF4",
    "navbar-dark-active-color" = "#E5E9F0",
    "navbar-dark-hover-color" = "#D8DEE9",
    "bslib-sidebar-bg" = "#D8DEE9",
    "body-bg" = "#ECEFF4",
    "body-color" = "#2E3440"
  )
}

#' @export
#'
#' @rdname bs-theme-nord
bs_theme_nord_dark <- function(version = bslib::version_default(), preset = "bootstrap") {
  bs_theme(
    version = version,
    preset = preset,
    primary = "#5E81AC",
    secondary = "#B48EAD",
    info = "#88C0D0",
    danger = "#BF616A",
    warning = "#D08770",
    success = "#A3BE8C",
    "navbar-bg" = "#2E3440",
    "navbar-dark-color" = "#ECEFF4",
    "navbar-dark-color" = "#ECEFF4",
    "navbar-dark-active-color" = "#E5E9F0",
    "navbar-dark-hover-color" = "#D8DEE9",
    "bslib-sidebar-bg" = "#3B4252",
    "bslib-sidebar-fg" = "#ECEFF4",
    "body-bg" = "#434C5E",
    "body-color" = "#ECEFF4",
    "card-bg" = "#4C566A",
    "body-emphasis-color" = "#ECEFF4"
  )
}
