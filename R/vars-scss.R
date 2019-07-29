
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
#'     tags$head(tags$style(HTML(
#'       create_theme(
#'         theme = "default",
#'         bs_vars_global(
#'           body_bg = "#F5A9E1",
#'           text_color = "#FFF",
#'           grid_columns = 16
#'         ),
#'         output_file = NULL
#'       )
#'     ))),
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
  class(vars) <- c("fresh_sass_vars", class(vars))
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
#'     header = tags$head(tags$style(HTML(
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
#'     ))),
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
  class(vars) <- c("fresh_sass_vars", class(vars))
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
#'     tags$head(tags$style(HTML(
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
#'     ))),
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
  class(vars) <- c("fresh_sass_vars", class(vars))
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
#'     tags$head(tags$style(HTML(
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
#'     ))),
#'     tags$h1("Custom progress bars"),
#'     # actionButton()
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
  class(vars) <- c("fresh_sass_vars", class(vars))
  vars
}





