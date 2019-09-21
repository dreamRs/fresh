
#' Use online Google font in Shiny application
#'
#' @param family Name of the family to use, see \url{https://fonts.google.com}.
#'
#' @return a HTML tag to be included in a UI definition
#' @export
#'
#' @importFrom htmltools htmlDependency
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(fresh)
#'
#'   ui <- fluidPage(
#'
#'     use_googlefont("Saira Stencil One"),
#'     use_theme(create_theme(
#'       theme = "default",
#'       bs_vars_font(
#'         family_sans_serif = "'Saira Stencil One', cursive"
#'       )
#'     )),
#'
#'     tags$h1("Use a google font (online demo)"),
#'     fluidRow(
#'       column(
#'         width = 6,
#'         tags$h2("Second level title"),
#'         tags$h3("Third level title"),
#'         tags$h4("Fourth level title"),
#'         tags$h5("Fifth level title"),
#'         tags$h6("Sixth level title"),
#'         tags$b("Bold text"),
#'         tags$p(
#'           "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
#'           " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
#'           "Ut enim ad minim veniam, quis nostrud exercitation ullamco",
#'           " laboris nisi ut aliquip ex ea commodo consequat.",
#'           "Duis aute irure dolor in reprehenderit in voluptate velit",
#'           " esse cillum dolore eu fugiat nulla pariatur.",
#'           "Excepteur sint occaecat cupidatat non proident, sunt in",
#'           " culpa qui officia deserunt mollit anim id est laborum."
#'         )
#'       ),
#'       column(
#'         width = 6,
#'         textInput("caption", "Caption", "Data Summary"),
#'         actionButton("goButton", "Go!"),
#'         checkboxGroupInput("variable", "Variables to show:",
#'                            c("Cylinders" = "cyl",
#'                              "Transmission" = "am",
#'                              "Gears" = "gear")),
#'         selectInput("variable", "Variable:",
#'                     c("Cylinders" = "cyl",
#'                       "Transmission" = "am",
#'                       "Gears" = "gear"))
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
use_googlefont <- function(family) {
  family_w_plus <- gsub(pattern = "\\s", replacement = "+", x = family)
  htmlDependency(
    name = family,
    version = "0.1.0",
    src = c(href = sprintf(
      "https://fonts.googleapis.com/css?family=%s&display=swap",
      family_w_plus
    )),
    stylesheet = ""
  )
}

