
#' @title CSS colors variables
#'
#' @description Those variables can be used to customize Bootstrap and Bootswatch themes.
#'
#' @param brand_primary Primary color (default in Bootstrap is blue).
#' @param brand_success Success color (default in Bootstrap is green).
#' @param brand_info Info color (default in Bootstrap is light blue).
#' @param brand_warning Warning color (default in Bootstrap is orange).
#' @param brand_danger Danger color (default in Bootstrap is red).
#' @param body_bg Background color (default in Bootstrap is white).
#' @param text_color Text color (default in Bootstrap is black).
#' @param gray_base Base gray color.
#' @param gray_darker Darker gray color.
#' @param gray_dark Dark gray color.
#' @param gray Gray color.
#' @param gray_light Light gray color.
#' @param gray_lighter Lighter gray color.
#'
#' @note See default parameters for Bootstrap: \url{https://getbootstrap.com/docs/3.4/customize/}.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#'
#' # New colors (for buttons for example)
#' vars_color(
#'   brand_primary = "#75b8d1",
#'   brand_success = "#c9d175",
#'   brand_info = "#758bd1",
#'   brand_warning = "#d1ab75",
#'   brand_danger = "#d175b8"
#' )
vars_color <- function(brand_primary = NULL,
                       brand_success = NULL,
                       brand_info = NULL,
                       brand_warning = NULL,
                       brand_danger = NULL,
                       body_bg = NULL,
                       text_color = NULL,
                       gray_base = NULL,
                       gray_darker = NULL,
                       gray_dark = NULL,
                       gray = NULL,
                       gray_light = NULL,
                       gray_lighter = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("sass_vars", class(vars))
  vars
}



#' @title CSS navbar variables
#'
#' @description Those variables can be used to customize Bootstrap and Bootswatch themes.
#'
#' @param height Height of the navbar, e.g. \code{"50px"} (the default in Bootstrap).
#' @param default_color Color of text in the navbar.
#' @param default_bg Background color of the navbar.
#' @param default_border Border color of the navbar.
#' @param default_link_color Link color.
#' @param inverse_color Color of text for inversed navbar.
#' @param inverse_bgBackground Background color for inversed navbar.
#' @param inverse_border Border color for inversed navbar.
#' @param inverse_link_color Link color for inversed navbar.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
vars_nav <- function(height = NULL,
                     default_color = NULL,
                     default_bg = NULL,
                     default_border = NULL,
                     default_link_color = NULL,
                     inverse_color = NULL,
                     inverse_bg = NULL,
                     inverse_border = NULL,
                     inverse_link_color = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "navbar")
  class(vars) <- c("sass_vars", class(vars))
  vars
}
