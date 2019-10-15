bs_vars_pills(
  border_radius = "100px",
  active_link_hover_bg = "#DF3A01",
  active_link_hover_color = "#FFF"
)

if (interactive()) {
  library(shiny)
  library(fresh)

  ui <- fluidPage(
    use_theme(
      create_theme(
        theme = "default",
        bs_vars_pills(
          border_radius = "100px",
          active_link_hover_bg = "#DF3A01",
          active_link_hover_color = "#FFF"
        ),
        output_file = NULL
      )
    ),
    tabsetPanel(
      type = "pills",
      tabPanel("Plot", plotOutput("plot")),
      tabPanel("Summary", verbatimTextOutput("summary")),
      tabPanel("Table", tableOutput("table"))
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}
