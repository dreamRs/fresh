
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
  class(vars) <- c("fresh_sass_vars", class(vars))
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
#'
#' # Change background color of the navbar
#'
#' bs_vars_nav(
#'   default_bg = "#75b8d1",
#'   default_color = "#FFFFFF",
#'   default_link_color = "#FFFFFF",
#'   default_link_active_color = "#FFFFFF"
#' )
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
  class(vars) <- c("fresh_sass_vars", class(vars))
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
#'
#' # Use a smaller font than the default
#' bs_vars_font(
#'   size_base = "12px"
#' )
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
  class(vars) <- c("fresh_sass_vars", class(vars))
  vars
}





#' @title Bootstrap CSS wells variables
#'
#' @description Those variables can be used to customize
#'  wells panel (e.g. \code{\link[shiny]{wellPanel}} or
#'  \code{\link[shiny]{sidebarPanel}}) in Bootstrap and Bootswatch themes.
#'
#' @param bg Background color (default in Shiny is grey).
#' @param border Border color.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#'
#' bs_vars_wells(
#'   bg = "#CEECF5"
#' )
bs_vars_wells <- function(bg = NULL, border = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "well")
  class(vars) <- c("fresh_sass_vars", class(vars))
  vars
}



#' @title Bootstrap CSS states variables
#'
#' @description Those variables can be used to customize
#'  states colors (used for alerts or panels) in Bootstrap and Bootswatch themes.
#'
#' @param success_text Success text color.
#' @param success_bg Success background color.
#' @param success_border Success border color.
#' @param info_text Info text color.
#' @param info_bg Info background color.
#' @param info_border Info border color.
#' @param warning_text Warning text color.
#' @param warning_bg Warning background color.
#' @param warning_border Warning border color.
#' @param danger_text Danger text color.
#' @param danger_bg Danger background color.
#' @param danger_border Danger border color.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#'
#' bs_vars_state(
#'   success_text = "#FFF",
#'   success_bg = "#238B45",
#'   success_border = "#00441B"
#' )
bs_vars_state <- function(success_text = NULL,
                          success_bg = NULL,
                          success_border = NULL,
                          info_text = NULL,
                          info_bg = NULL,
                          info_border = NULL,
                          warning_text = NULL,
                          warning_bg = NULL,
                          warning_border = NULL,
                          danger_text = NULL,
                          danger_bg = NULL,
                          danger_border = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "state")
  class(vars) <- c("fresh_sass_vars", class(vars))
  vars
}



#' @title Bootstrap CSS input variables
#'
#' @description Those variables can be used to customize
#'  inputs in Bootstrap and Bootswatch themes.
#'
#' @param bg Background color.
#' @param color Text color.
#' @param border Border color.
#' @param border_radius Border radius.
#' @param color_placeholder Text color of placeholder.
#' @param group_addon_bg Background color of addons.
#' @param border_focus Color of border when focused.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
bs_vars_input <- function(bg = NULL,
                          color = NULL,
                          border = NULL,
                          border_radius = NULL,
                          color_placeholder = NULL,
                          group_addon_bg = NULL,
                          border_focus = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "input")
  class(vars) <- c("fresh_sass_vars", class(vars))
  vars
}

