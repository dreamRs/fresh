# Background color of wellPanel
bs_vars_wells(
  bg = "#CEECF5"
)


if (interactive()) {
  library(shiny)

  ui <- fluidPage(
    use_theme(create_theme(
      theme = "default",
      bs_vars_wells(
        bg = "#CEECF5"
      )
    )),
    wellPanel(
      "This is a wellPanel"
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}
