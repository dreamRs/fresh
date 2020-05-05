
#' @title Bootstrap CSS global variables
#'
#' @description Those variables can be used to customize
#'  Bootstrap and Bootswatch themes.
#'
#' @param body_bg Background color for the body.
#' @param text_color Global text color on body.
#' @param link_color Global textual link color.
#' @param link_hover_color Link hover color.
#' @param line_height_base Unit-less `line-height` for use in components like buttons.
#' @param grid_columns Number of columns in the grid, e.g. in \code{\link[shiny:fluidPage]{shiny::fluidRow(shiny::column(...))}}.
#' @param grid_gutter_width Padding between columns. Gets divided in half for the left and right.
#' @param border_radius_base Base border radius (rounds the corners of elements).
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_global.R
bs_vars_global <- function(body_bg = NULL,
                           text_color = NULL,
                           link_color = NULL,
                           link_hover_color = NULL,
                           line_height_base = NULL,
                           grid_columns = NULL,
                           grid_gutter_width = NULL,
                           border_radius_base = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}



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
#' @example examples/bs_vars_color.R
bs_vars_color <- function(brand_primary = NULL,
                          brand_success = NULL,
                          brand_info = NULL,
                          brand_warning = NULL,
                          brand_danger = NULL,
                          gray_base = NULL,
                          gray_darker = NULL,
                          gray_dark = NULL,
                          gray = NULL,
                          gray_light = NULL,
                          gray_lighter = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}



#' @title Bootstrap CSS navbar variables
#'
#' @description Those variables can be used to customize
#'  navigation bar component (e.g. \code{\link[shiny:navbarPage]{shiny::navbarPage}}) in Bootstrap and Bootswatch themes.
#'
#' @param height Height of the navbar, e.g. \code{"50px"} (the default in Bootstrap).
#' @param margin_bottom Bottom margin of navbar.
#' @param border_radius Radius border (rounded corner).
#' @param padding_horizontal Horizontal padding.
#' @param padding_vertical = Vertical padding.
#' @param collapse_max_height Max height when collapsed.
#' @param default_color Color of text in the navbar.
#' @param default_bg Background color of the navbar.
#' @param default_border Border color of the navbar.
#' @param default_link_color Link color.
#' @param default_link_active_color Color for active link (selected tab).
#' @param default_link_active_bg Background color for active link (selected tab).
#' @param default_link_hover_color Color of links when hovered.
#' @param default_link_hover_bg Background color of links when hovered.
#' @param inverse_color Color of text for inversed navbar.
#' @param inverse_bg Background color for inversed navbar.
#' @param inverse_border Border color for inversed navbar.
#' @param inverse_link_color Link color for inversed navbar.
#' @param inverse_link_active_color Color for active link (selected tab) for inversed navbar.
#' @param inverse_link_active_bg Background color for active link (selected tab) for inversed navbar.
#' @param inverse_link_hover_color Color of links when hovered for inversed navbar.
#' @param inverse_link_hover_bg Background color of links when hovered for inversed navbar.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @note See default parameters for Bootstrap: \url{https://getbootstrap.com/docs/3.4/customize/}.
#'
#' @example examples/bs_vars_navbar.R
bs_vars_navbar <- function(height = NULL,
                           margin_bottom = NULL,
                           border_radius = NULL,
                           padding_horizontal = NULL,
                           padding_vertical = NULL,
                           collapse_max_height = NULL,
                           default_color = NULL,
                           default_bg = NULL,
                           default_border = NULL,
                           default_link_color = NULL,
                           default_link_active_color = NULL,
                           default_link_active_bg = NULL,
                           default_link_hover_color = NULL,
                           default_link_hover_bg = NULL,
                           inverse_color = NULL,
                           inverse_bg = NULL,
                           inverse_border = NULL,
                           inverse_link_color = NULL,
                           inverse_link_active_color = NULL,
                           inverse_link_active_bg = NULL,
                           inverse_link_hover_color = NULL,
                           inverse_link_hover_bg = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "navbar")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}



#' @title Bootstrap CSS nav variables
#'
#' @description Those variables can be used to customize
#'  navs (e.g. \code{\link[shiny:tabsetPanel]{shiny::tabsetPanel}} or
#'  \code{\link[shiny:navlistPanel]{shiny::navlistPanel}}) in Bootstrap and Bootswatch themes.
#'
#' @param link_padding Padding for links (tabset's titles).
#' @param link_hover_bg Link hover background color.
#' @param disabled_link_color Disabled link color.
#' @param disabled_link_hover_color Disabled link hover color.
#'
#' @note See \code{\link{bs_vars_pills}} and \code{\link{bs_vars_tabs}} for more options.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_nav.R
bs_vars_nav <- function(link_padding = NULL,
                        link_hover_bg = NULL,
                        disabled_link_color = NULL,
                        disabled_link_hover_color = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "nav")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}




#' @title Bootstrap CSS font variables
#'
#' @description Those variables can be used to customize
#'  fonts in Bootstrap and Bootswatch themes.
#'
#' @param family_sans_serif Font family to use.
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
#' @example examples/bs_vars_font.R
bs_vars_font <- function(family_sans_serif = NULL,
                         size_base = NULL,
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
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}





#' @title Bootstrap CSS wells variables
#'
#' @description Those variables can be used to customize
#'  wells panel (e.g. \code{\link[shiny:wellPanel]{shiny::wellPanel}} or
#'  \code{\link[shiny:sidebarLayout]{shiny::sidebarPanel}}) in Bootstrap and Bootswatch themes.
#'
#' @param bg Background color (default in Shiny is grey).
#' @param border Border color.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @note See default parameters for Bootstrap: \url{https://getbootstrap.com/docs/3.4/customize/}.
#'
#' @example examples/bs_vars_wells.R
bs_vars_wells <- function(bg = NULL, border = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "well")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
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
#' @note See default parameters for Bootstrap: \url{https://getbootstrap.com/docs/3.4/customize/}.
#'
#' @example examples/bs_vars_state.R
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
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
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
#' @note See default parameters for Bootstrap: \url{https://getbootstrap.com/docs/3.4/customize/}.
#'
#' @example examples/bs_vars_input.R
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
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}




#' @title Bootstrap CSS alert variables
#'
#' @description Those variables can be used to customize
#'  inputs in Bootstrap and Bootswatch themes.
#'
#' @param padding Padding for alerts.
#' @param border_radius Border radius (rounded corners)
#' @param link_font_weight Font weight for links in alerts.
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
#' @note See default parameters for Bootstrap: \url{https://getbootstrap.com/docs/3.4/customize/}.
#'
#' @example examples/bs_vars_alert.R
bs_vars_alert <- function(padding = NULL,
                          border_radius = NULL,
                          link_font_weight = NULL,
                          success_text = NULL,
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
  vars <- vars_names(vars, prefix = "alert")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}



#' @title Bootstrap CSS progress variables
#'
#' @description Those variables can be used to customize
#'  progress bars (e.g. \code{\link[shinyWidgets:progress-bar]{shinyWidgets::progressBar}}
#'  and \code{\link[shiny:Progress]{shiny::Progress or shiny::withProgress}})
#'  in Bootstrap and Bootswatch themes.
#'
#' @param bg Background color of the whole progress component
#' @param bar_color Progress bar text color
#' @param border_radius Variable for setting rounded corners on progress bar.
#' @param bar_bg Default progress bar color.
#' @param bar_success_bg Success progress bar color.
#' @param bar_warning_bg Warning progress bar color.
#' @param bar_danger_bg Danger progress bar color.
#' @param bar_info_bg Info progress bar color.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_progress.R
bs_vars_progress <- function(bg = NULL,
                             bar_color = NULL,
                             border_radius = NULL,
                             bar_bg = NULL,
                             bar_success_bg = NULL,
                             bar_warning_bg = NULL,
                             bar_danger_bg = NULL,
                             bar_info_bg = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "progress")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}



#' @title Bootstrap CSS panel variables
#'
#' @description Those variables can be used to customize
#'  panel (e.g. \code{\link[shinyWidgets:panel]{shinyWidgets::panel}}
#'  in Bootstrap and Bootswatch themes.
#'
#' @param bg Background color.
#' @param body_padding Panel body padding.
#' @param heading_padding Panel heading padding.
#' @param footer_padding Panel footer padding.
#' @param border_radius Variable for setting rounded corners on panel.
#' @param inner_border Border color for inner elements in panel.
#' @param footer_bg Panel footer background color.
#' @param default_text Default color for text.
#' @param default_border Default border color.
#' @param default_heading_bg Default background color for panel heading.
#' @param primary_text Text color for primary status.
#' @param primary_border Border color for primary status.
#' @param primary_heading_bg Heading background color for primary status.
#' @param success_text Text color for success status.
#' @param success_border Border color for success status.
#' @param success_heading_bg Heading background color for success status.
#' @param info_text Text color for info status.
#' @param info_border Border color for info status.
#' @param info_heading_bg Heading background color for info status.
#' @param warning_text Text color for warning status.
#' @param warning_border Border color for warning status.
#' @param warning_heading_bg Heading background color for warning status.
#' @param danger_text Text color for danger status.
#' @param danger_border Border color for danger status.
#' @param danger_heading_bg Heading background color for danger status.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_panel.R
bs_vars_panel <- function(bg = NULL,
                          body_padding = NULL,
                          heading_padding = NULL,
                          footer_padding = NULL,
                          border_radius = NULL,
                          inner_border = NULL,
                          footer_bg = NULL,
                          default_text = NULL,
                          default_border = NULL,
                          default_heading_bg = NULL,
                          primary_text = NULL,
                          primary_border = NULL,
                          primary_heading_bg = NULL,
                          success_text = NULL,
                          success_border = NULL,
                          success_heading_bg = NULL,
                          info_text = NULL,
                          info_border = NULL,
                          info_heading_bg = NULL,
                          warning_text = NULL,
                          warning_border = NULL,
                          warning_heading_bg = NULL,
                          danger_text = NULL,
                          danger_border = NULL,
                          danger_heading_bg = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "panel")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}





#' @title Bootstrap CSS modal variables
#'
#' @description Those variables can be used to customize
#'  modal (e.g. \code{\link[shiny:modalDialog]{shiny::modalDialog}}
#'  in Bootstrap and Bootswatch themes.
#'
#' @param md Size in pixel for medium modal, e.g. \code{modalDialog(size = "m")}.
#' @param lg Size in pixel for large modal, e.g. \code{modalDialog(size = "l")}.
#' @param sm Size in pixel for small modal, e.g. \code{modalDialog(size = "s")}.
#' @param inner_padding Padding applied to the modal body.
#' @param title_padding Padding applied to the modal title.
#' @param title_line_height Modal title line-height.
#' @param content_bg Background color of modal content area.
#' @param content_border_color Modal content border color.
#' @param content_fallback_border_color Modal content border color (for IE8).
#' @param backdrop_bg Modal backdrop background color.
#' @param backdrop_opacity Modal backdrop opacity.
#' @param header_border_color Modal header border color.
#' @param footer_border_color Modal footer border color.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_modal.R
bs_vars_modal <- function(md = NULL,
                          lg = NULL,
                          sm = NULL,
                          inner_padding = NULL,
                          title_padding = NULL,
                          title_line_height = NULL,
                          content_bg = NULL,
                          content_border_color = NULL,
                          content_fallback_border_color = NULL,
                          backdrop_bg = NULL,
                          backdrop_opacity = NULL,
                          header_border_color = NULL,
                          footer_border_color = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "modal")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}




#' @title Bootstrap CSS button variables
#'
#' @description Those variables can be used to customize
#'  buttons (e.g. \code{\link[shiny:actionButton]{shiny::actionButton}})
#'  in Bootstrap and Bootswatch themes.
#'
#' @param font_weight Text font weight.
#' @param default_color Text color for default buttons.
#' @param default_bg Background color for default buttons.
#' @param default_border Border color for default buttons.
#' @param primary_color Text color for primary buttons.
#' @param primary_bg Background color for primary buttons.
#' @param primary_border Border color for primary buttons.
#' @param success_color Text color for success buttons.
#' @param success_bg Background color for success buttons.
#' @param success_border Border color for success buttons.
#' @param info_color Text color for info buttons.
#' @param info_bg Background color for info buttons.
#' @param info_border Border color for info buttons.
#' @param warning_color Text color for warning buttons.
#' @param warning_bg Background color for warning buttons.
#' @param warning_border Border color for warning buttons.
#' @param danger_color Text color for danger buttons.
#' @param danger_bg Background color for danger buttons.
#' @param danger_border Border color for danger buttons.
#' @param link_disabled_color Color for disabled link.
#' @param border_radius_base Button rounded corner.
#' @param border_radius_large Large button rounded corner.
#' @param border_radius_small Small button rounded corner.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_button.R
bs_vars_button <- function(font_weight = NULL,
                           default_color = NULL,
                           default_bg = NULL,
                           default_border = NULL,
                           primary_color = NULL,
                           primary_bg = NULL,
                           primary_border = NULL,
                           success_color = NULL,
                           success_bg = NULL,
                           success_border = NULL,
                           info_color = NULL,
                           info_bg = NULL,
                           info_border = NULL,
                           warning_color = NULL,
                           warning_bg = NULL,
                           warning_border = NULL,
                           danger_color = NULL,
                           danger_bg = NULL,
                           danger_border = NULL,
                           link_disabled_color = NULL,
                           border_radius_base = NULL,
                           border_radius_large = NULL,
                           border_radius_small = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "btn")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}




#' @title Bootstrap CSS dropdown variables
#'
#' @description Those variables can be used to customize
#'  dropdowns (e.g. \code{\link[shinyWidgets:dropdownButton]{shinyWidgets::dropdownButton}}
#'  in Bootstrap and Bootswatch themes.
#'
#' @param bg Background color for the dropdown menu.
#' @param border Dropdown menu border-color.
#' @param fallback_border Dropdown menu border-color (for IE8).
#' @param divider_bg Divider color for between dropdown items.
#' @param link_color Dropdown link text color.
#' @param link_hover_color Hover color for dropdown links.
#' @param link_hover_bg Hover background for dropdown links.
#' @param link_active_color Active dropdown menu item text color.
#' @param link_active_bg Active dropdown menu item background color.
#' @param link_disabled_color  Disabled dropdown menu item background color.
#' @param header_color Text color for headers within dropdown menus.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_dropdown.R
bs_vars_dropdown <- function(bg = NULL,
                             border = NULL,
                             fallback_border = NULL,
                             divider_bg = NULL,
                             link_color = NULL,
                             link_hover_color = NULL,
                             link_hover_bg = NULL,
                             link_active_color = NULL,
                             link_active_bg = NULL,
                             link_disabled_color = NULL,
                             header_color = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "dropdown")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}



#' @title Bootstrap CSS pills variables
#'
#' @description Those variables can be used to customize
#'  pills (e.g. \code{\link[shiny:tabsetPanel]{shiny:tabsetPanel}}
#'  in Bootstrap and Bootswatch themes.
#'
#' @param border_radius Rounded corner of elements.
#' @param active_link_hover_bg Background color when selected.
#' @param active_link_hover_color Text color when selected.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_pills.R
bs_vars_pills <- function(border_radius = NULL,
                          active_link_hover_bg = NULL,
                          active_link_hover_color = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "nav-pills")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}






#' @title Bootstrap CSS tabs variables
#'
#' @description Those variables can be used to customize
#'  pills (e.g. \code{\link[shiny:tabsetPanel]{shiny:tabsetPanel}}
#'  in Bootstrap and Bootswatch themes.
#'
#' @param border_color Border color.
#' @param link_hover_border_color Link hover color.
#' @param active_link_hover_bg Active link hover background color.
#' @param active_link_hover_color Active link hover color.
#' @param active_link_hover_border_color Active link hover border color.
#' @param justified_link_border_color Justified link border color.
#' @param justified_active_link_border_color Justified active link border color.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_tabs.R
bs_vars_tabs <- function(border_color = NULL,
                         link_hover_border_color = NULL,
                         active_link_hover_bg = NULL,
                         active_link_hover_color = NULL,
                         active_link_hover_border_color = NULL,
                         justified_link_border_color = NULL,
                         justified_active_link_border_color = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "nav-tabs")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}




#' @title Bootstrap CSS badge variables
#'
#' @description Those variables can be used to customize
#'  badge in Bootstrap and Bootswatch themes.
#'
#' @param color Text color.
#' @param bg Background color.
#' @param link_hover_color Linked badge text color on hover.
#' @param active_color Badge text color in active nav link.
#' @param active_bg Badge background color in active nav link.
#' @param font_weight Font weight, e.g. : \code{"bold"}.
#' @param line_height Line height.
#' @param border_radius Border radius.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_badge.R
bs_vars_badge <- function(color = NULL,
                          bg = NULL,
                          link_hover_color = NULL,
                          active_color = NULL,
                          active_bg = NULL,
                          font_weight = NULL,
                          line_height = NULL,
                          border_radius = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "badge")
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}


#' @title Bootstrap CSS components variables
#'
#' @description Those variables can be used to customize
#'  components padding and borders in Bootstrap and Bootswatch themes.
#'
#' @param padding_base_vertical Vertical base padding.
#' @param padding_base_horizontal Horizontal base padding.
#' @param padding_large_vertical Vertical large padding.
#' @param padding_large_horizontal Horizontal large padding.
#' @param padding_small_vertical Vertical small padding.
#' @param padding_small_horizontal Horizontal small padding.
#' @param padding_xs_vertical Vertical extra small padding.
#' @param padding_xs_horizontal Horizontal extra small padding.
#' @param line_height_large Line height for large elements.
#' @param line_height_small Line height for small elements.
#' @param border_radius_base Base border radius.
#' @param border_radius_large Large border radius.
#' @param border_radius_small Small border radius.
#' @param component_active_color Color for active components.
#' @param component_active_bg Background color for active components.
#' @param caret_width_base Width for caret.
#' @param caret_width_large Widget for large caret.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @example examples/bs_vars_component.R
bs_vars_component <- function(padding_base_vertical = NULL,
                              padding_base_horizontal = NULL,
                              padding_large_vertical = NULL,
                              padding_large_horizontal = NULL,
                              padding_small_vertical = NULL,
                              padding_small_horizontal = NULL,
                              padding_xs_vertical = NULL,
                              padding_xs_horizontal = NULL,
                              line_height_large = NULL,
                              line_height_small = NULL,
                              border_radius_base = NULL,
                              border_radius_large = NULL,
                              border_radius_small = NULL,
                              component_active_color = NULL,
                              component_active_bg = NULL,
                              caret_width_base = NULL,
                              caret_width_large = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}


