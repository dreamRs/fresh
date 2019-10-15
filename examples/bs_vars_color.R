# New colors (for buttons for example)
bs_vars_color(
  brand_primary = "#75b8d1",
  brand_success = "#c9d175",
  brand_info = "#758bd1",
  brand_warning = "#d1ab75",
  brand_danger = "#d175b8"
)

if (interactive()) {
  library(shiny)
  library(shinyWidgets)
  library(fresh)

  ui <- fluidPage(
    use_theme(create_theme(
      theme = "default",
      bs_vars_color(
        brand_primary = "#75b8d1",
        brand_success = "#c9d175",
        brand_info = "#758bd1",
        brand_warning = "#d1ab75",
        brand_danger = "#d175b8"
      )
    )),
    tags$h1("Colors"),

    tags$p("Apply to :"),
    tags$p("buttons"),
    actionButton("btn1", "Primary", class = "btn-primary"),
    actionButton("btn2", "Success", class = "btn-success"),
    actionButton("btn3", "Danger", class = "btn-danger"),
    actionButton("btn4", "Warning", class = "btn-warning"),
    actionButton("btn5", "info", class = "btn-info"),
    tags$br(), tags$br(),
    tags$p("links"),
    tags$a(href = "", "A link (same color as the primary button)"),
    tags$br(), tags$br(),
    tags$p("labels"),
    tags$span(class = "label label-primary", "Primary"),
    tags$span(class = "label label-success", "Success"),
    tags$span(class = "label label-danger", "Danger"),
    tags$span(class = "label label-warning", "Warning"),
    tags$span(class = "label label-info", "Info"),
    tags$br(), tags$br(),
    tags$p("progress bars"),
    progressBar(
      "pb1", value = 80, status = "primary", display_pct = TRUE
    ),
    progressBar(
      "pb2", value = 80, status = "success", display_pct = TRUE
    ),
    progressBar(
      "pb3", value = 80, status = "danger", display_pct = TRUE
    ),
    progressBar(
      "pb4", value = 80, status = "warning", display_pct = TRUE
    ),
    progressBar(
      "pb5", value = 80, status = "info", display_pct = TRUE
    ),
    tags$br(), tags$br(),
    tags$p("and panels (only primary)"),
    panel(
      heading = "Primary panel",
      status = "primary",
      "For other status, look at ?bs_vars_state"
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}
