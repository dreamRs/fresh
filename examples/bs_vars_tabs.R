bs_vars_tabs(
  border_color = "#FF0000", # red
  link_hover_border_color = "#FFFF00", # yellow
  active_link_hover_bg = "#FF00FF", # pink
  active_link_hover_color = "#FFF" # white
)

if (interactive()) {
  library(shiny)
  library(fresh)

  ui <- fluidPage(
    use_theme(create_theme(
      theme = "default",
      bs_vars_global(
        link_color = "#00FF00" #green
      ),
      bs_vars_tabs(
        border_color = "#FF0000", # red
        link_hover_border_color = "#FFFF00", # yellow
        active_link_hover_bg = "#FF00FF", # pink
        active_link_hover_color = "#FFF" # white
      )
    )),
    tags$h1("Tabs panel"),

    sidebarLayout(
      sidebarPanel(),
      mainPanel(
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
