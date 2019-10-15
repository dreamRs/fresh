bs_vars_dropdown(
  bg = "#FAFAFA",
  border = "firebrick"
)

if (interactive()) {
  library(shiny)
  library(shinyWidgets)

  ui <- fluidPage(
    use_theme(
      create_theme(
        theme = "default",
        bs_vars_dropdown(
          bg = "#FAFAFA",
          border = "firebrick"
        ),
        output_file = NULL
      )
    ),
    tags$h1("Custom dropdowns"),
    dropdownButton(
      inputId = "mydropdown",
      label = "Controls",
      icon = icon("sliders"),
      status = "primary",
      circle = FALSE,
      sliderInput(
        inputId = "n",
        label = "Number of observations",
        min = 10, max = 100, value = 30
      ),
      prettyToggle(
        inputId = "na",
        label_on = "NAs keeped",
        label_off = "NAs removed",
        icon_on = icon("check"),
        icon_off = icon("remove")
      )
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}
