
#  ------------------------------------------------------------------------
#
# Title : Theme demo
#    By : Victor
#  Date : 2020-05-01
#
#  ------------------------------------------------------------------------


# Packages ----------------------------------------------------------------

library(shiny)
library(shinyWidgets)
library(fresh)


dreamRs <- create_theme(
  theme = "default",
  bs_vars_global(
    grid_columns = 30
  ),
  bs_vars_navbar(
    default_bg = "#112446",
    default_color = "#FFFFFF",
    default_link_color = "#FFFFFF",
    default_link_active_color = "#FFFFFF",
    default_link_hover_color = "#A4A4A4"
  ),
  bs_vars_button(
    font_weight = 500,
    border_radius_base = 0,
    default_color = "#112446",
    default_border = "#112446",
    primary_color = "#FFF",
    primary_bg = "#112446",
    primary_border = "#112446"
  ),
  bs_vars_color(
    brand_primary = "#112446",
    brand_success = "#7bc043",
    brand_info = "#0392cf",
    brand_warning = "#f37736",
    brand_danger = "#ee4035"
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
  bs_vars_nav(link_padding = "5px 25px"),
  bs_vars_tabs(
    border_color = "#112446",
    active_link_hover_bg = "#FFF",
    active_link_hover_color = "#112446",
    active_link_hover_border_color = "#112446",
    link_hover_border_color = "#112446"
  )
)

ui <- navbarPage(

  title = "My application",
  header = tagList(
    use_theme(dreamRs)
  ),

  tabPanel(
    title = "First page",

    tags$h1("Custom theme for Shiny apps"),

    sidebarLayout(
      sidebarPanel(
        width = 8,
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
        width = 22,
        tags$h3("Buttons"),
        actionButton(
          "default", "Default"
        ),
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

        tags$h3("tabPanels"),
        tabsetPanel(
          tabPanel("Plot"),
          tabPanel("Summary"),
          tabPanel("Table")
        ),

        tags$h3("fluidRow"),
        fluidRow(
          tags$div(class = "col-sm-15", wellPanel("width=15 - 2 columns")),
          tags$div(class = "col-sm-15", wellPanel("width=15 - 2 columns"))
        ),
        fluidRow(
          tags$div(class = "col-sm-10", wellPanel("width=10 - 3 columns")),
          tags$div(class = "col-sm-10", wellPanel("width=10 - 3 columns")),
          tags$div(class = "col-sm-10", wellPanel("width=10 - 3 columns"))
        ),
        fluidRow(
          column(width = 6, wellPanel("width=6 - 5 columns")),
          column(width = 6, wellPanel("width=6 - 5 columns")),
          column(width = 6, wellPanel("width=6 - 5 columns")),
          column(width = 6, wellPanel("width=6 - 5 columns")),
          column(width = 6, wellPanel("width=6 - 5 columns"))
        ),
        fluidRow(
          column(width = 5, wellPanel("width=5 - 6 columns")),
          column(width = 5, wellPanel("width=5 - 6 columns")),
          column(width = 5, wellPanel("width=5 - 6 columns")),
          column(width = 5, wellPanel("width=5 - 6 columns")),
          column(width = 5, wellPanel("width=5 - 6 columns")),
          column(width = 5, wellPanel("width=5 - 6 columns"))
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
