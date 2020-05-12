
bs_vars_table(
  bg_accent = "lightblue",
  bg_hover = "firebrick"
)


if (interactive()) {
  library(shiny)
  library(fresh)

  ui <- fluidPage(

    use_theme(create_theme(
      theme = "default",
      bs_vars_table(
        bg_accent = "lightblue",
        bg_hover = "firebrick"
      )
    )),

    tags$h1("Tables"),
    fluidRow(
      column(
        width = 6,
        tableOutput("table")
      ),
      column(
        width = 6,
        dataTableOutput("datatable")
      )
    )
  )

  server <- function(input, output, session) {

    output$table <- renderTable(
      head(iris), striped = TRUE, hover = TRUE
    )

    output$datatable <- renderDataTable({
      head(mtcars)
    })

  }

  shinyApp(ui, server)
}
