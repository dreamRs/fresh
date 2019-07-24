
#' @title Bootstrap CSS colors variables
#'
#' @description Those variables can be used to customize
#'  defaults colors in Bootstrap and Bootswatch themes.
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
#' bs_vars_color(
#'   brand_primary = "#75b8d1",
#'   brand_success = "#c9d175",
#'   brand_info = "#758bd1",
#'   brand_warning = "#d1ab75",
#'   brand_danger = "#d175b8"
#' )
bs_vars_color <- function(brand_primary = NULL,
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



#' @title Bootstrap CSS navbar variables
#'
#' @description Those variables can be used to customize
#'  navigation bar component in Bootstrap and Bootswatch themes.
#'
#' @param height Height of the navbar, e.g. \code{"50px"} (the default in Bootstrap).
#' @param default_color Color of text in the navbar.
#' @param default_bg Background color of the navbar.
#' @param default_border Border color of the navbar.
#' @param default_link_color Link color.
#' @param default_link_active_color Color for active link (selected tab).
#' @param default_link_active_bg Background color for active link (selected tab).
#' @param inverse_color Color of text for inversed navbar.
#' @param inverse_bg Background color for inversed navbar.
#' @param inverse_border Border color for inversed navbar.
#' @param inverse_link_color Link color for inversed navbar.
#' @param inverse_link_active_color Color for active link (selected tab) for inversed navbar.
#' @param inverse_link_active_bg Background color for active link (selected tab) for inversed navbar.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @note See default parameters for Bootstrap: \url{https://getbootstrap.com/docs/3.4/customize/}.
#'
#' @examples
bs_vars_nav <- function(height = NULL,
                     default_color = NULL,
                     default_bg = NULL,
                     default_border = NULL,
                     default_link_color = NULL,
                     default_link_active_color = NULL,
                     default_link_active_bg = NULL,
                     inverse_color = NULL,
                     inverse_bg = NULL,
                     inverse_border = NULL,
                     inverse_link_color = NULL,
                     inverse_link_active_color = NULL,
                     inverse_link_active_bg = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "navbar")
  class(vars) <- c("sass_vars", class(vars))
  vars
}




#' @title Bootstrap CSS font variables
#'
#' @description Those variables can be used to customize
#'  fonts in Bootstrap and Bootswatch themes.
#'
#' @param size_base Size of base font, e.g. normal text, default in Bootstrap is \code{"15px"}.
#' @param size_large Size of large text.
#' @param size_small Size of small text.
#' @param size_h1 Size of h1 tags.
#' @param size_h2 Size of h2 tags.
#' @param size_h3 Size of h3 tags.
#' @param size_h4 Size of h4 tags.
#' @param size_h5 Size of h5 tags.
#' @param size_h6 Size of h6 tags.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#'
#' @note In Bootstrap, only \code{size_base} is defined, all others are calculated from this one.
#'  See default parameters for Bootstrap: \url{https://getbootstrap.com/docs/3.4/customize/}.
#'
#' @export
#'
#' @examples
bs_vars_font <- function(size_base = NULL,
                         size_large = NULL,
                         size_small = NULL,
                         size_h1 = NULL,
                         size_h2 = NULL,
                         size_h3 = NULL,
                         size_h4 = NULL,
                         size_h5 = NULL,
                         size_h6 = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "font")
  class(vars) <- c("sass_vars", class(vars))
  vars
}



