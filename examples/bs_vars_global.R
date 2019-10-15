# change background color
bs_vars_global(
  body_bg = "#FAFAFA"
)

if (interactive()) {
  library(shiny)

  ui <- fluidPage(
    use_theme(
      create_theme(
        theme = "default",
        bs_vars_global(
          body_bg = "#F5A9E1",
          text_color = "#FFF",
          grid_columns = 16
        ),
        output_file = NULL
      )
    ),
    tags$h1("My custom app!"),
    tags$h3("With plenty of columns!"),
    fluidRow(
      column(
        width = 1, "Column 1"
      ),
      column(
        width = 1, "Column 2"
      ),
      column(
        width = 1, "Column 3"
      ),
      column(
        width = 1, "Column 4"
      ),
      column(
        width = 1, "Column 5"
      ),
      column(
        width = 1, "Column 6"
      ),
      column(
        width = 1, "Column 7"
      ),
      column(
        width = 1, "Column 8"
      ),
      column(
        width = 1, "Column 9"
      ),
      column(
        width = 1, "Column 10"
      ),
      column(
        width = 1, "Column 11"
      ),
      column(
        width = 1, "Column 12"
      ),
      column(
        width = 1, "Column 13"
      ),
      column(
        width = 1, "Column 14"
      ),
      column(
        width = 1, "Column 15"
      ),
      column(
        width = 1, "Column 16"
      )
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}
