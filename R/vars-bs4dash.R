
#' bs4Dash main colors
#'
#' @param blue Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#0073b7")} This color is used for \strong{primary} status.
#' @param lightblue Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#3c8dbc")}
#' @param navy Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#001f3f")}
#' @param cyan Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#17a2b8")} This color is used for \strong{info} status.
#' @param teal Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#39cccc")}
#' @param olive Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#3d9970")}
#' @param green Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#28a745")} This color is used for \strong{success} status.
#' @param lime Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#01ff70")}
#' @param orange Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#ff851b")}
#' @param yellow Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#ffc107")} This color is used for \strong{warning} status.
#' @param fuchsia Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#f012be")}
#' @param purple Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#605ca8")}
#' @param maroon Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#d81b60")}
#' @param red Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#dc3545")} This color is used for \strong{danger} status.
#' @param black Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#111")}
#' @param gray_x_light Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#d2d6de")}
#' @param gray_600  Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#6c757d")} This color is used for \strong{secondary} status.
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
                          gray_600 = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "bs4dash_vars", class(vars))
  vars
}



#' bs4Dash status colors
#'
#' @param primary Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#0073b7")}
#' @param secondary Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#6c757d")}
#' @param success Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#28a745")}
#' @param info Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#17a2b8")}
#' @param warning Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#ffc107")}
#' @param danger Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#dc3545")}
#' @param light Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#f8f9fa")}
#' @param dark Default: \Sexpr[results=rd, stage=render]{fresh:::rd_color_tag("#343a40")}
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
                                  submenu_bg, submenu_color = NULL,
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
                                 submenu_bg, submenu_color = NULL,
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

