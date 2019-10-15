bs_vars_badge(
  color = "firebrick",
  bg = "steelblue"
)


if (interactive()) {

  library(shiny)

  ui <- fluidPage(
    use_theme(create_theme(
      theme = "default",
      bs_vars_badge(
        color = "yellow",
        bg = "firebrick",
        line_height = 1.2
      )
    )),
    tags$h1("Badges"),
    tags$span(class = "badge", "Simple badge"),
    tags$br(),
    tags$ul(
      class = "list-group",
      tags$li(
        class = "list-group-item",
        "Badge in list group",
        tags$span(class = "badge", "badge")
      ),
      tags$li(
        class = "list-group-item",
        "An other item",
        tags$span(class = "badge", "other")
      )
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)

}
