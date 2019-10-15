bs_vars_progress(
  border_radius = "15px",
  bar_bg = "#1B9E77",
  bar_info_bg = "#D95F02",
  bar_success_bg = "#7570B3",
  bar_danger_bg = "#E7298A"
)

if (interactive()) {
  library(shiny)
  library(shinyWidgets)

  ui <- fluidPage(
    use_theme(
      create_theme(
        theme = "default",
        bs_vars_progress(
          border_radius = "15px",
          bar_bg = "#1B9E77",
          bar_info_bg = "#D95F02",
          bar_success_bg = "#7570B3",
          bar_danger_bg = "#E7298A"
        ),
        output_file = NULL
      )
    ),
    tags$h1("Custom progress bars"),
    fluidRow(
      column(
        width = 6,
        progressBar(
          "pb1", value = 90, display_pct = TRUE
        )
      ),
      column(
        width = 6,
        progressBar(
          "pb2", value = 70, status = "info", display_pct = TRUE
        )
      ),
      column(
        width = 6,
        progressBar(
          "pb3", value = 50, status = "success", display_pct = TRUE
        )
      ),
      column(
        width = 6,
        progressBar(
          "pb4", value = 30, status = "danger", display_pct = TRUE
        )
      )
    ),
    plotOutput("plot")
  )

  server <- function(input, output, session) {

    output$plot <- renderPlot({
      withProgress(message = 'Calculation in progress',
                   detail = 'This may take a while...', value = 0, {
                     for (i in 1:15) {
                       incProgress(1/15)
                       Sys.sleep(0.25)
                     }
                   })
      plot(cars)
    })

  }

  shinyApp(ui, server)
}
