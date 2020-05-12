# Change color of tabset when hovered
bs_vars_nav(
  link_padding = "30px 45px",
  link_hover_bg = "#FF0000"
)

if (interactive()) {
  library(shiny)
  library(fresh)

  ui <- fluidPage(

    use_theme(create_theme(
      theme = "default",
      bs_vars_nav(
        link_padding = "30px 45px",
        link_hover_bg = "#FF0000"
      )
    )),

    tags$h1("State variables"),
    fluidRow(
      column(
        width = 6,
        navlistPanel(
          "Header",
          tabPanel("First"),
          tabPanel("Second"),
          tabPanel("Third")
        )
      ),
      column(
        width = 6,
        tabsetPanel(
          tabPanel("Plot", plotOutput("plot")),
          tabPanel("Summary", verbatimTextOutput("summary")),
          tabPanel("Table", tableOutput("table"))
        )
      )
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}
