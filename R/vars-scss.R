
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
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#'
#' bs_vars_global(
#'   body_bg = "#FAFAFA" # change background color
#' )
#'
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     use_theme(
#'       create_theme(
#'         theme = "default",
#'         bs_vars_global(
#'           body_bg = "#F5A9E1",
#'           text_color = "#FFF",
#'           grid_columns = 16
#'         ),
#'         output_file = NULL
#'       )
#'     ),
#'     tags$h1("My custom app!"),
#'     tags$h3("With plenty of columns!"),
#'     fluidRow(
#'       column(
#'         width = 1, "Column 1"
#'       ),
#'       column(
#'         width = 1, "Column 2"
#'       ),
#'       column(
#'         width = 1, "Column 3"
#'       ),
#'       column(
#'         width = 1, "Column 4"
#'       ),
#'       column(
#'         width = 1, "Column 5"
#'       ),
#'       column(
#'         width = 1, "Column 6"
#'       ),
#'       column(
#'         width = 1, "Column 7"
#'       ),
#'       column(
#'         width = 1, "Column 8"
#'       ),
#'       column(
#'         width = 1, "Column 9"
#'       ),
#'       column(
#'         width = 1, "Column 10"
#'       ),
#'       column(
#'         width = 1, "Column 11"
#'       ),
#'       column(
#'         width = 1, "Column 12"
#'       ),
#'       column(
#'         width = 1, "Column 13"
#'       ),
#'       column(
#'         width = 1, "Column 14"
#'       ),
#'       column(
#'         width = 1, "Column 15"
#'       ),
#'       column(
#'         width = 1, "Column 16"
#'       )
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
bs_vars_global <- function(body_bg = NULL,
                           text_color = NULL,
                           link_color = NULL,
                           link_hover_color = NULL,
                           line_height_base = NULL,
                           grid_columns = NULL,
                           grid_gutter_width = NULL) {
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
#'  navigation bar component in Bootstrap and Bootswatch themes.
#'
#' @param height Height of the navbar, e.g. \code{"50px"} (the default in Bootstrap).
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
#'
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- navbarPage(
#'     title = "Custom navbar",
#'     header = use_theme(
#'       create_theme(
#'         theme = "default",
#'         bs_vars_nav(
#'           default_bg = "#75b8d1",
#'           default_color = "#FFFFFF",
#'           default_link_color = "#FFFFFF",
#'           default_link_active_color = "#75b8d1",
#'           default_link_active_bg = "#FFFFFF",
#'           default_link_hover_color = "firebrick"
#'
#'         ),
#'         output_file = NULL
#'       )
#'     ),
#'     tabPanel("Tab 1"),
#'     tabPanel("Tab 2")
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
bs_vars_nav <- function(height = NULL,
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
#'
#' if (interactive()) {
#'   library(shiny)
#'   library(fresh)
#'
#'   ui <- fluidPage(
#'     use_theme(create_theme(
#'       theme = "default",
#'       bs_vars_font(
#'         size_base = "32px"
#'       )
#'     )),
#'     tags$h1("Big font theme"),
#'
#'     sidebarLayout(
#'       sidebarPanel(
#'         "This is the sidebar panel"
#'       ),
#'       mainPanel(
#'         tags$h1("First level title"),
#'         tags$h2("Second level title"),
#'         tags$h3("Third level title"),
#'         tags$h4("Fourth level title"),
#'         tags$h5("Fifth level title"),
#'         tags$h6("Sixth level title")
#'       )
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
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
  class(vars) <- c("fresh_sass_vars", "bootstrap_vars", class(vars))
  vars
}





#' @title Bootstrap CSS wells variables
#'
#' @description Those variables can be used to customize
#'  wells panel (e.g. \code{\link[shiny:wellPanel]{shiny::wellPanel}} or
#'  \code{\link[shiny:sidebarPanel]{shiny::sidebarPanel}}) in Bootstrap and Bootswatch themes.
#'
#' @param bg Background color (default in Shiny is grey).
#' @param border Border color.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @note See default parameters for Bootstrap: \url{https://getbootstrap.com/docs/3.4/customize/}.
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
#' @examples
#'
#' bs_vars_input(
#'   border_radius = "10px" # change border radius
#' )
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
#' @examples
#'
#' bs_vars_alert(
#'   border_radius = "10px", # increase border radius,
#'   success_bg = "#c9d175" # change color for success alerts
#' )
#'
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     use_theme(
#'       create_theme(
#'         theme = "default",
#'         bs_vars_alert(
#'           border_radius = "15px",
#'           success_bg = "forestgreen",
#'           success_text = "#FFF",
#'           danger_bg = "firebrick",
#'           danger_text = "#FFF"
#'         ),
#'         output_file = NULL
#'       )
#'     ),
#'     tags$br(),
#'     tags$div(
#'       class = "alert alert-success",
#'       "This is an alert !"
#'     ),
#'     tags$div(
#'       class = "alert alert-danger",
#'       "This is an other alert !"
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
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
#' @examples
#'
#' bs_vars_progress(
#'   border_radius = "15px",
#'   bar_bg = "#1B9E77",
#'   bar_info_bg = "#D95F02",
#'   bar_success_bg = "#7570B3",
#'   bar_danger_bg = "#E7298A"
#' )
#'
#' if (interactive()) {
#'   library(shiny)
#'   library(shinyWidgets)
#'
#'   ui <- fluidPage(
#'     use_theme(
#'       create_theme(
#'         theme = "default",
#'         bs_vars_progress(
#'           border_radius = "15px",
#'           bar_bg = "#1B9E77",
#'           bar_info_bg = "#D95F02",
#'           bar_success_bg = "#7570B3",
#'           bar_danger_bg = "#E7298A"
#'         ),
#'         output_file = NULL
#'       )
#'     ),
#'     tags$h1("Custom progress bars"),
#'     fluidRow(
#'       column(
#'         width = 6,
#'         progressBar(
#'           "pb1", value = 90, display_pct = TRUE
#'         )
#'       ),
#'       column(
#'         width = 6,
#'         progressBar(
#'           "pb2", value = 70, status = "info", display_pct = TRUE
#'         )
#'       ),
#'       column(
#'         width = 6,
#'         progressBar(
#'           "pb3", value = 50, status = "success", display_pct = TRUE
#'         )
#'       ),
#'       column(
#'         width = 6,
#'         progressBar(
#'           "pb4", value = 30, status = "danger", display_pct = TRUE
#'         )
#'       )
#'     ),
#'     plotOutput("plot")
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'     output$plot <- renderPlot({
#'       withProgress(message = 'Calculation in progress',
#'                    detail = 'This may take a while...', value = 0, {
#'                      for (i in 1:15) {
#'                        incProgress(1/15)
#'                        Sys.sleep(0.25)
#'                      }
#'                    })
#'       plot(cars)
#'     })
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
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
#' @examples
#'
#' bs_vars_panel(
#'   border_radius = "15px",
#'   default_text = "#FFF",
#'   default_heading_bg = "#3f2d54",
#'   default_border = "#3f2d54",
#'   primary_heading_bg = "#1B9E77",
#'   primary_border = "#1B9E77",
#'   success_heading_bg = "#D95F02",
#'   success_border = "#D95F02",
#'   success_text = "#FFF",
#'   danger_heading_bg = "#7570B3",
#'   danger_border = "#7570B3",
#'   danger_text = "#FFF"
#' )
#'
#' if (interactive()) {
#'   library(shiny)
#'   library(shinyWidgets)
#'
#'   ui <- fluidPage(
#'     use_theme(
#'       create_theme(
#'         theme = "default",
#'         bs_vars_panel(
#'           border_radius = "15px",
#'           default_text = "#FFF",
#'           default_heading_bg = "#3f2d54",
#'           default_border = "#3f2d54",
#'           primary_heading_bg = "#1B9E77",
#'           primary_border = "#1B9E77",
#'           success_heading_bg = "#D95F02",
#'           success_border = "#D95F02",
#'           success_text = "#FFF",
#'           danger_heading_bg = "#7570B3",
#'           danger_border = "#7570B3",
#'           danger_text = "#FFF"
#'         ),
#'         output_file = NULL
#'       )
#'     ),
#'     tags$h1("Custom panels"),
#'     fluidRow(
#'       column(
#'         width = 3,
#'         panel(
#'           heading = "Default panel",
#'           "Some content"
#'         )
#'       ),
#'       column(
#'         width = 3,
#'         panel(
#'           heading = "Primary panel",
#'           status = "primary",
#'           "Some content"
#'         )
#'       ),
#'       column(
#'         width = 3,
#'         panel(
#'           heading = "Success panel",
#'           status = "success",
#'           "Some content"
#'         )
#'       ),
#'       column(
#'         width = 3,
#'         panel(
#'           heading = "Danger panel",
#'           status = "danger",
#'           "Some content"
#'         )
#'       )
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
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
#' @examples
#'
#' bs_vars_modal(
#'   md = "80%",
#'   backdrop_opacity = 1,
#'   header_border_color = "#112446",
#'   footer_border_color = "#112446"
#' )
#'
#' if (interactive()) {
#'   library(shiny)
#'   library(shinyWidgets)
#'
#'   ui <- fluidPage(
#'     use_theme(
#'       create_theme(
#'         theme = "default",
#'         bs_vars_modal(
#'           md = "80%",
#'           backdrop_opacity = 1,
#'           header_border_color = "#112446",
#'           footer_border_color = "#112446"
#'         ),
#'         output_file = NULL
#'       )
#'     ),
#'     tags$h1("Custom modals"),
#'     actionButton("show", "Show modal dialog")
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'     observeEvent(input$show, {
#'       showModal(modalDialog(
#'         title = "Important message",
#'         "This is an important message!"
#'       ))
#'     })
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
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
#'  buttons (e.g. \code{\link[shiny:actionButton]{shiny::actionButton}}
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
#' @examples
#'
#' bs_vars_button(
#'   default_color = "#FFF",
#'   default_bg = "#112446",
#'   default_border = "#FFF",
#'   primary_color = "#112446",
#'   primary_bg = "#FFF",
#'   primary_border = "#112446",
#'   border_radius_base = 0
#' )
#'
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     use_theme(
#'       create_theme(
#'         theme = "default",
#'         bs_vars_button(
#'           default_color = "#FFF",
#'           default_bg = "#112446",
#'           default_border = "#FFF",
#'           primary_color = "#112446",
#'           primary_bg = "#FFF",
#'           primary_border = "#112446",
#'           border_radius_base = 0
#'         ),
#'         output_file = NULL
#'       )
#'     ),
#'     tags$h1("Custom buttons"),
#'     actionButton("button1", "This is a default button"),
#'     actionButton(
#'       "button2", "This is a primary button",
#'       class = "btn-primary"
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
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
#' @examples
#'
#' bs_vars_dropdown(
#'   bg = "#FAFAFA",
#'   border = "firebrick"
#' )
#'
#' if (interactive()) {
#'   library(shiny)
#'   library(shinyWidgets)
#'
#'   ui <- fluidPage(
#'     use_theme(
#'       create_theme(
#'         theme = "default",
#'         bs_vars_dropdown(
#'           bg = "#FAFAFA",
#'           border = "firebrick"
#'         ),
#'         output_file = NULL
#'       )
#'     ),
#'     tags$h1("Custom dropdowns"),
#'     dropdownButton(
#'       inputId = "mydropdown",
#'       label = "Controls",
#'       icon = icon("sliders"),
#'       status = "primary",
#'       circle = FALSE,
#'       sliderInput(
#'         inputId = "n",
#'         label = "Number of observations",
#'         min = 10, max = 100, value = 30
#'       ),
#'       prettyToggle(
#'         inputId = "na",
#'         label_on = "NAs keeped",
#'         label_off = "NAs removed",
#'         icon_on = icon("check"),
#'         icon_off = icon("remove")
#'       )
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
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


