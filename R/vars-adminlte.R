
#' @title AdminLTE CSS colors variables
#'
#' @description Those variables can be used to customize
#'  defaults colors in {shinydashboard}.
#'
#' @param light_blue Light blue (primary status), default to \code{#3c8dbc}.
#' @param red Red (danger status), default to \code{#dd4b39}.
#' @param green Green (success status), default to \code{#00a65a}.
#' @param aqua Aqua (info status), default to \code{#00c0ef}.
#' @param yellow Yellow (warning status), default to \code{#f39c12}.
#' @param blue Blue, default to \code{#0073b7}.
#' @param navy Navy, default to \code{#001F3F}.
#' @param teal Teal, default to \code{#39CCCC}.
#' @param olive Olive, default to \code{#3D9970}.
#' @param lime Lime, default to \code{#01FF70}.
#' @param orange Orange, default to \code{#FF851B}.
#' @param fuchsia Fuchsia, default to \code{#F012BE}.
#' @param purple Purple, default to \code{#605ca8}.
#' @param maroon Maroon, default to \code{#D81B60}.
#' @param black Black, default to \code{#111}.
#' @param gray_lte Gray, default to \code{#d2d6de}.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#'
#' adminlte_color(
#'   light_blue = "#086A87",
#'   aqua = "#A9D0F5",
#'   green = "#0B3B0B",
#'   purple = "#610B4B"
#' )
#'
#' if (interactive()) {
#'   library(shiny)
#'   library(shinydashboard)
#'
#'   ui <- dashboardPage(
#'     header = dashboardHeader(title = "My dashboard"),
#'     sidebar = dashboardSidebar(
#'       sidebarMenu(
#'         menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard"))
#'       )
#'     ),
#'     body = dashboardBody(
#'
#'       use_theme(create_theme(
#'         adminlte_color(
#'           light_blue = "#086A87",
#'           aqua = "#A9D0F5",
#'           green = "#0B3B0B",
#'           purple = "#610B4B"
#'         )
#'       )),
#'
#'       tabItems(
#'         tabItem(
#'           "dashboard",
#'
#'           # infoBoxes
#'           fluidRow(
#'             infoBox(
#'               "Orders", uiOutput("orderNum2"), "Subtitle", icon = icon("credit-card")
#'             ),
#'             infoBox(
#'               "Approval Rating", "60%", icon = icon("line-chart"), color = "green",
#'               fill = TRUE
#'             ),
#'             infoBox(
#'               "Progress", "20%", icon = icon("users"), color = "purple"
#'             )
#'           ),
#'
#'           # valueBoxes
#'           fluidRow(
#'             valueBox(
#'               5846, "New Orders", icon = icon("credit-card"),
#'               href = "http://google.com"
#'             ),
#'             valueBox(
#'               tagList("60", tags$sup(style="font-size: 20px", "%")),
#'               "Approval Rating", icon = icon("line-chart"), color = "green"
#'             ),
#'             valueBox(
#'               "42%", "Progress", icon = icon("users"), color = "purple"
#'             )
#'
#'           )
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
adminlte_color <- function(light_blue = NULL,
                           red = NULL,
                           green = NULL,
                           aqua = NULL,
                           yellow = NULL,
                           blue = NULL,
                           navy = NULL,
                           teal = NULL,
                           olive = NULL,
                           lime = NULL,
                           orange = NULL,
                           fuchsia = NULL,
                           purple = NULL,
                           maroon = NULL,
                           black = NULL,
                           gray_lte = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "adminlte_vars", class(vars))
  vars
}
