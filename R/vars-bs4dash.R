
#' bs4Dash main colors
#'
#' @param blue Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#0073b7")} This color is used for \strong{primary} status.
#' @param lightblue Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#3c8dbc")}
#' @param navy Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#001f3f")}
#' @param cyan Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#17a2b8")} This color is used for \strong{info} status.
#' @param teal Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#39cccc")}
#' @param olive Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#3d9970")}
#' @param green Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#28a745")} This color is used for \strong{success} status.
#' @param lime Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#01ff70")}
#' @param orange Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#ff851b")}
#' @param yellow Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#ffc107")} This color is used for \strong{warning} status.
#' @param fuchsia Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#f012be")}
#' @param purple Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#605ca8")}
#' @param maroon Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#d81b60")}
#' @param red Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#dc3545")} This color is used for \strong{danger} status.
#' @param black Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#111")}
#' @param gray_x_light Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#d2d6de")}
#' @param gray_600 Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#6c757d")} This color is used for \strong{secondary} status.
#' @param gray_800 Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#343a40")} Color for dark skin.
#' @param gray_900 Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#212529")} Color for text in body.
#' @param white Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#ffffff")}
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs4dash_color.R
bs4dash_color <- function(blue = NULL,
                          lightblue = NULL,
                          navy = NULL,
                          cyan = NULL,
                          teal = NULL,
                          olive = NULL,
                          green = NULL,
                          lime = NULL,
                          orange = NULL,
                          yellow = NULL,
                          fuchsia = NULL,
                          purple = NULL,
                          maroon = NULL,
                          red = NULL,
                          black = NULL,
                          gray_x_light = NULL,
                          gray_600 = NULL,
                          gray_800 = NULL,
                          gray_900 = NULL,
                          white = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "bs4dash_vars", class(vars))
  vars
}



#' bs4Dash status colors
#'
#' @param primary Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#0073b7")}
#' @param secondary Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#6c757d")}
#' @param success Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#28a745")}
#' @param info Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#17a2b8")}
#' @param warning Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#ffc107")}
#' @param danger Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#dc3545")}
#' @param light Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#f8f9fa")}
#' @param dark Default: \Sexpr[results=rd, stage=install]{fresh:::rd_col("#343a40")}
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs4dash_status.R
bs4dash_status <- function(primary = NULL,
                           secondary = NULL,
                           success = NULL,
                           info = NULL,
                           warning = NULL,
                           danger = NULL,
                           light = NULL,
                           dark = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "bs4dash_vars", class(vars))
  vars
}



#' bs4Dash layout options
#'
#' @param font_size_root Font size root.
#' @param sidebar_width Sidebar width.
#' @param sidebar_padding_x Sidebar horizontal padding.
#' @param sidebar_padding_y Sidebar vertical padding.
#' @param sidebar_mini_width Width for mini sidabar.
#' @param control_sidebar_width Control sidebar width (the one on the right).
#' @param boxed_layout_max_width Max width used in boxed layout.
#' @param screen_header_collapse When to show the smaller logo.
#' @param main_bg Main background color.
#' @param content_padding_x Main content horizontal padding.
#' @param content_padding_y Main content vertical padding.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs4dash_layout.R
bs4dash_layout <- function(font_size_root = NULL,
                           sidebar_width = NULL,
                           sidebar_padding_x = NULL,
                           sidebar_padding_y = NULL,
                           sidebar_mini_width = NULL,
                           control_sidebar_width = NULL,
                           boxed_layout_max_width = NULL,
                           screen_header_collapse = NULL,
                           main_bg = NULL,
                           content_padding_x = NULL,
                           content_padding_y = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "bs4dash_vars", class(vars))
  vars
}



#' bs4Dash sidebar skins light/dark
#'
#' @param bg Background color.
#' @param hover_bg Hover background color.
#' @param color Color.
#' @param hover_color Hover color.
#' @param active_color Active color.
#' @param submenu_bg Submenu background color.
#' @param submenu_color Submenu color.
#' @param submenu_hover_color Submenu hover color.
#' @param submenu_hover_bg Submenu hover background color.
#' @param submenu_active_color Submenu active color.
#' @param submenu_active_bg Submenu active background color.
#' @param header_color Header color.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @name bs4Dash-sidebar
#'
#' @example examples/bs4dash-sidebars.R
bs4dash_sidebar_light <- function(bg = NULL,
                                  hover_bg = NULL,
                                  color = NULL,
                                  hover_color = NULL,
                                  active_color = NULL,
                                  submenu_bg = NULL,
                                  submenu_color = NULL,
                                  submenu_hover_color = NULL,
                                  submenu_hover_bg = NULL,
                                  submenu_active_color = NULL,
                                  submenu_active_bg = NULL,
                                  header_color = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "sidebar-light")
  class(vars) <- c("fresh_sass_vars", "bs4dash_vars", class(vars))
  vars
}

#' @export
#'
#' @rdname bs4Dash-sidebar
bs4dash_sidebar_dark <- function(bg = NULL,
                                 hover_bg = NULL,
                                 color = NULL,
                                 hover_color = NULL,
                                 active_color = NULL,
                                 submenu_bg = NULL,
                                 submenu_color = NULL,
                                 submenu_hover_color = NULL,
                                 submenu_hover_bg = NULL,
                                 submenu_active_color = NULL,
                                 submenu_active_bg = NULL,
                                 header_color = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "sidebar-dark")
  class(vars) <- c("fresh_sass_vars", "bs4dash_vars", class(vars))
  vars
}




#' @title bs4Dash color contrast
#'
#' @description These variables allow to customize color used if
#' contrast between a color and its background is under threshold.
#' For example, it's used to choose text color written in \code{bs4ValueBox}
#' with background defined by a status.
#'
#' @param contrasted_threshold The yiq lightness value that
#'  determines when the lightness of color changes from "dark"
#'  to "light". Acceptable values are between 0 and 255.
#' @param text_dark Dark text color.
#' @param text_light Light text color.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs4dash_yiq.R
bs4dash_yiq <- function(contrasted_threshold = NULL,
                        text_dark = NULL,
                        text_light = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "yiq")
  class(vars) <- c("fresh_sass_vars", "bs4dash_vars", class(vars))
  vars
}




#' bs4Dash fonts parameters
#'
#' @param size_base Base size, this size is used to calculate other size. Must in \code{rem} unit.
#' @param size_lg Large size.
#' @param size_sm Small size.
#' @param size_xs Extra small size.
#' @param size_xl Extra large size.
#' @param weight_light Light font weight.
#' @param weight_normal Normal font weight.
#' @param weight_bold Bold font weight.
#' @param family_sans_serif Sans serif font family.
#' @param family_monospace Monospace font family.
#' @param family_base Base font family.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs4dash_font.R
bs4dash_font <- function(size_base = NULL,
                         size_lg = NULL,
                         size_sm = NULL,
                         size_xs = NULL,
                         size_xl = NULL,
                         weight_light = NULL,
                         weight_normal = NULL,
                         weight_bold = NULL,
                         family_sans_serif = NULL,
                         family_monospace = NULL,
                         family_base = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "font")
  class(vars) <- c("fresh_sass_vars", "bs4dash_vars", class(vars))
  vars
}



#' bs4dash buttons variables
#'
#' @param default_background_color Default background color.
#' @param default_color Default color.
#' @param default_border_color Default border color.
#' @param padding_y_xs Vertical padding for extra small button.
#' @param padding_x_xs Horizontal padding for extra small button.
#' @param line_height_xs Line height for extra small button.
#' @param font_size_xs Font size for extra small button.
#' @param border_radius_xs Border radius for extra small button.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs4dash_button.R
bs4dash_button <- function(default_background_color = NULL,
                           default_color = NULL,
                           default_border_color = NULL,
                           padding_y_xs = NULL,
                           padding_x_xs = NULL,
                           line_height_xs = NULL,
                           font_size_xs = NULL,
                           border_radius_xs = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "button")
  class(vars) <- c("fresh_sass_vars", "bs4dash_vars", class(vars))
  vars
}





#' @title bs4dash custom variables
#'
#' @description Use any AdminLTE or Bootstrap variables to customize a \{bs4Dash\} theme.
#'
#' @param ... Variables to use, under the form \code{body_bg = "#FFF"} or \code{"body-bg" = "#FFF"}.
#'
#' @note For a full list of available variables, use \code{\link{search_vars_bs4dash}}.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#' bs4dash_vars(body_bg = "#FFF")
#'
#' bs4dash_vars("body-bg" = "#FFF")
bs4dash_vars <- function(...) {
  vars <- list(...)
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "bs4dash_vars", class(vars))
  vars
}




