

library(shiny)
library(shinyWidgets)
library(fresh)


# Color taken from
# hrbrthemes::ipsum_pal()(9)

create_theme(
  theme = "default",
  bs_vars_color(
    gray_base = "#354e5c",
    brand_primary = "#75b8d1",
    brand_success = "#c9d175",
    brand_info = "#758bd1",
    brand_warning = "#d1ab75",
    brand_danger = "#d175b8"
  ),
  bs_vars_state(
    success_text = "#FFF",
    success_bg = "#c9d175",
    success_border = "#c9d175",
    danger_text = "#FFF",
    danger_bg = "#d175b8",
    danger_border = "#d175b8"
  ),
  bs_vars_wells(
    bg = "#98dfd8" # "#86d1d9", "#98dfd8"
  ),
  output_file = "www/mytheme.css"
)

ui <- fluidPage(

  theme = "mytheme.css",

  tags$h1("Custom theme for Shiny apps"),

  sidebarLayout(
    sidebarPanel(
      radioButtons(
        inputId = "radio",
        label = "Your choice:",
        choices = c("shiny", "shinydashboard", "flexdashboard")
      )
    ),
    mainPanel(

      tags$h3("Buttons"),
      actionButton(
        "primary", "Primary", class = "btn-primary"
      ),
      actionButton(
        "success", "Success", class = "btn-success"
      ),
      actionButton(
        "info", "Info", class = "btn-info"
      ),
      actionButton(
        "warning", "Warning", class = "btn-warning"
      ),
      actionButton(
        "danger", "Danger", class = "btn-danger"
      ),

      tags$h3("Panel from {shinyWidgets}"),
      fluidRow(
        column(
          width = 4,
          panel(
            heading = "Primary panel",
            status = "primary"
          )
        ),
        column(
          width = 4,
          panel(
            heading = "Success panel",
            status = "success"
          )
        ),
        column(
          width = 4,
          panel(
            heading = "Danger panel",
            status = "danger"
          )
        )
      ),

      tags$h3("progressBar from {shinyWidgets}"),
      fluidRow(
        column(
          width = 4,
          progressBar(
            "pb1", value = 80, status = "primary", display_pct = TRUE
          )
        ),
        column(
          width = 4,
          progressBar(
            "pb2", value = 60, status = "success", display_pct = TRUE
          )
        ),
        column(
          width = 4,
          progressBar(
            "pb3", value = 40, status = "danger", display_pct = TRUE
          )
        )
      )
    )
  )

)

server <- function(input, output, session) {

}

shinyApp(ui, server)
