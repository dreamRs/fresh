bs_vars_modal(
  md = "80%",
  backdrop_opacity = 1,
  header_border_color = "#112446",
  footer_border_color = "#112446"
)

if (interactive()) {
  library(shiny)
  library(shinyWidgets)

  ui <- fluidPage(
    use_theme(
      create_theme(
        theme = "default",
        bs_vars_modal(
          md = "80%",
          backdrop_opacity = 1,
          header_border_color = "#112446",
          footer_border_color = "#112446"
        ),
        output_file = NULL
      )
    ),
    tags$h1("Custom modals"),
    actionButton("show", "Show modal dialog")
  )

  server <- function(input, output, session) {

    observeEvent(input$show, {
      showModal(modalDialog(
        title = "Important message",
        "This is an important message!"
      ))
    })

  }

  shinyApp(ui, server)
}
