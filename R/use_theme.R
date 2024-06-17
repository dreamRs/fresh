
#' Use a CSS theme in Shiny application
#'
#' @param theme Either a path to CSS file (if in `www/` folder,
#'  do not include `www/` in path), or a theme generated with
#'  [create_theme()] and argument `output_file = NULL` or [bs4Dash_theme()].
#'
#' @return HTML tags to be included in a UI definition.
#' @export
#'
#' @importFrom htmltools singleton tags HTML htmlDependency tagList
#' @importFrom bslib bs_theme_dependencies
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(fresh)
#'
#'   ui <- fluidPage(
#'     use_theme(create_theme(
#'       theme = "default",
#'       bs_vars_global(
#'         body_bg = "#000",
#'         text_color = "#FFF"
#'       ),
#'       bs_vars_wells(
#'         bg = "#2E2E2E"
#'       )
#'     )),
#'     tags$h1("Inversed color theme"),
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
use_theme <- function(theme) {
  if (inherits(theme, what = "bs4Dash_theme")) {
    return(tagList(
      bs_theme_dependencies(theme),
      htmlDependency(
        name = "AdminLTE3",
        version = "3.1.0.9000",
        src = c(file = "AdminLTE3-3.1.0"),
        script = "adminlte.min.js",
        package = "bs4Dash"
      )
    ))
  }
  if (inherits(theme, what = "css")) {
    tags$head(tags$style(
      id = "fresh-theme",
      HTML(theme)
    ))
  } else {
    singleton(tags$head(tags$link(
      rel = "stylesheet",
      type = "text/css",
      href = theme
    )))
  }
}

