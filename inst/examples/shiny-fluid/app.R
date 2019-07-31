

library(shiny)
library(shinyWidgets)
library(fresh)


# Color taken from
# hrbrthemes::ipsum_pal()(9)

create_theme(
  theme = "default",
  bs_vars_nav(
    default_bg = "#3f2d54",
    default_color = "#FFFFFF",
    default_link_color = "#FFFFFF",
    default_link_active_color = "#FFFFFF",
    default_link_hover_color = "#A4A4A4"
  ),
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
    info_text = "#FFF",
    info_bg = "#3f2d54",
    info_border = "#3f2d54",
    danger_text = "#FFF",
    danger_bg = "#d175b8",
    danger_border = "#d175b8"
  ),
  bs_vars_wells(
    bg = "#FFF",
    border = "#3f2d54"
  ),
  output_file = "www/mytheme.css"
)

ui <- navbarPage(

  title = "My application",
  theme = "mytheme.css",

  tabPanel(
    title = "First page",

    tags$h1("Custom theme for Shiny apps"),

    sidebarLayout(
      sidebarPanel(
        radioButtons(
          inputId = "radio",
          label = "Your choice:",
          choices = c("shiny", "shinydashboard", "flexdashboard")
        ),
        tags$div(
          class = "alert alert-info",
          icon("info"), "You can customize a lot of elements from Bootstrap"
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
  ),
  tabPanel(
    title = "Second page"
  ),
  navbarMenu(
    title = "More",
    tabPanel("Summary"),
    "----",
    "Section header",
    tabPanel("Table")
  )

)

server <- function(input, output, session) {

}

shinyApp(ui, server)
