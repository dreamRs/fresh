library(shiny)
library(shinyWidgets)
library(fresh)
library(RColorBrewer)




# Modules -----------------------------------------------------------------

color_select_UI <- function(id, fun) {
  ns <- NS(id)
  args <- names(formals(fun))
  args <- grep(pattern = "(bg|color|brand)", x = args, value = TRUE)
  args <- grep(pattern = "inverse", x = args, value = TRUE, invert = TRUE)
  colors <- list(
    list('white', 'black', 'firebrick', 'steelblue', 'forestgreen'),
    as.list(brewer.pal(n = 9, name = "Blues")),
    as.list(brewer.pal(n = 9, name = "Greens")),
    as.list(brewer.pal(n = 11, name = "Spectral")),
    as.list(brewer.pal(n = 8, name = "Dark2"))
  )
  tagList(
    lapply(
      X = args,
      FUN = function(x) {
        spectrumInput(
          inputId = ns(x),
          label = x,
          choices = colors,
          update_on = "change",
          options = list(`toggle-palette-more-text` = "Show more")
        )
      }
    )
  )
}

color_select <- function(input, output, session, fun) {
  args <- names(formals(fun))
  args <- grep(pattern = "(bg|color|brand)", x = args, value = TRUE)
  rv <- reactiveValues()
  lapply(
    X = args,
    FUN = function(x) {
      observeEvent(input[[x]], {
        rv[[x]] <- input[[x]]
      }, ignoreInit = TRUE)
    }
  )
  return(rv)
}


pixel_select_UI <- function(id, fun) {
  ns <- NS(id)
  args <- names(formals(fun))
  args <- grep(pattern = "size", x = args, value = TRUE)

  tagList(
    lapply(
      X = args,
      FUN = function(x) {
        sliderInput(
          inputId = ns(x), label = x,
          min = 1, max = 36, value = 12
        )
      }
    )
  )
}

pixel_select <- function(input, output, session, fun) {
  args <- names(formals(fun))
  args <- grep(pattern = "size", x = args, value = TRUE)
  rv <- reactiveValues()
  lapply(
    X = args,
    FUN = function(x) {
      observeEvent(input[[x]], {
        rv[[x]] <- paste0(input[[x]], "px")
      }, ignoreInit = TRUE)
    }
  )
  return(rv)
}



interactive_theme_UI <- function(id) {
  ns <- NS(id)
  variables <- c("bs_vars_navbar", "bs_vars_global", "bs_vars_color", "bs_vars_wells", "bs_vars_tabs", "bs_vars_font")
  tagList(
    uiOutput(outputId = ns("theme_ui")),
    absolutePanel(
      top = "50px", right = "20px", width = "350px",
      style = "z-index: 99999;",
      draggable = TRUE,
      panel(
        status = "primary",
        tags$h3("Interactive theme creator"),
        pickerInput(
          inputId = ns("theme"),
          label = "Main theme:",
          choices = c("default", "cerulean", "cosmo", "cyborg", "darkly", "flatly",
                      "journal", "lumen", "paper", "readable", "sandstone", "simplex",
                      "slate", "spacelab", "superhero", "united", "yeti")
        ),
        pickerInput(
          inputId = ns("bs_vars"),
          label = "Variables to modify:",
          choices = variables
        ),
        tags$hr(),
        lapply(
          X = variables,
          FUN = function(x) {
            conditionalPanel(
              condition = sprintf("input.bs_vars == '%s'", x),
              ns = ns,
              if (x %in% "bs_vars_font") {
                pixel_select_UI(ns(x), x)
              } else {
                color_select_UI(ns(x), x)
              }
            )
          }
        )
      )
    )
  )
}

interactive_theme <- function(input, output, session) {

  variables <- c("bs_vars_navbar", "bs_vars_global", "bs_vars_color", "bs_vars_wells", "bs_vars_tabs", "bs_vars_font")

  results <- reactiveValues()
  lapply(
    X = variables,
    FUN = function(x) {
      if (x %in% "bs_vars_font") {
        results[[x]] <- callModule(
          module = pixel_select,
          id = x,
          fun = x
        )
      } else {
        results[[x]] <- callModule(
          module = color_select,
          id = x,
          fun = x
        )
      }
    }
  )

  output$theme_ui <- renderUI({
    results <- reactiveValuesToList(results)
    vars <- lapply(
      X = names(results),
      FUN = function(x) {
        do.call(what = x, args = reactiveValuesToList(results[[x]]))
      }
    )
    css <- do.call(
      what = create_theme,
      args = c(list(theme = input$theme), vars)
    )
    removeUI(selector = "#fresh-theme", immediate = TRUE)
    use_theme(theme = css)
  })

}





# use_theme(create_theme(
#   theme = "default",
#   do.call("bs_vars_navbar", reactiveValuesToList(colors_vars_navbar))
# ))



# App ---------------------------------------------------------------------


ui <- navbarPage(

  title = "My application",

  header = interactive_theme_UI("theme"),

  tabPanel(
    title = "First page",

    tags$h1("Custom theme for Shiny apps"),

    sidebarLayout(
      sidebarPanel(
        "This is a sidebarPanel() (same appearance as wellPanel())",
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
        ),
        tabsetPanel(
          tabPanel("Plot"),
          tabPanel("Summary"),
          tabPanel("Table")
        ),
        tags$hr(),
        tags$b("Typography"),
        tags$p("Classic paragraph"),
        tags$h1("First level title"),
        tags$h2("Second level title"),
        tags$h3("Third level title"),
        tags$h4("Fourth level title"),
        tags$h5("Fifth level title"),
        tags$h6("Sixth level title")
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
  callModule(
    module = interactive_theme,
    id = "theme"
  )
}

shinyApp(ui, server)
