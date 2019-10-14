
#' @title Create a custom CSS file for pretty-checkbox
#'
#' @description This allow you to change colors of \code{\link[shinyWidgets]{prettyCheckbox}},
#'  \code{\link[shinyWidgets]{prettyRadioButtons}}
#'
#' @param output_file Specifies path to output file for compiled CSS.
#' @param default Default color.
#' @param primary Primary color.
#' @param success Success color.
#' @param info Info color.
#' @param warning Warning color.
#' @param danger Danger color.
#'
#' @return If \code{output_file = NULL}, the function returns a string value of the compiled CSS.
#'  If the output path is specified, the compiled CSS is written to that file and \code{invisible()} is returned.
#'
#'
#' @export
#'
#' @examples
#'
#' # Temporary file
#' tmp <- file.path(tempdir(), "my-pretty.css")
#'
#' # Create the new theme
#' create_pretty(
#'   output_file = tmp,
#'   primary = "#FFFF00"
#' )
#'
#' # Clean
#' unlink(tmp)
create_pretty <- function(output_file,
                          default = NULL,
                          primary = NULL,
                          success = NULL,
                          info = NULL,
                          warning = NULL,
                          danger = NULL) {
  colors <- dropNulls(list(
    default = default,
    primary = primary,
    success = success,
    info = info,
    warning = warning,
    danger = danger
  ))
  names(colors) <- paste0("pretty--color-", names(colors))
  input <- list(
    colors,
    sass_file(
      input = system.file(
        "assets/pretty/pretty-checkbox.scss",
        package = "fresh"
      )
    )
  )
  sass(
    input = input,
    output = output_file,
    options = sass_options(output_style = "compressed")
  )
}


#' @title Use pretty-checkbox CSS in Shiny
#'
#' @description After created new pretty-checkbox CSS with \code{\link{create_pretty}},
#'  allow to use in Shiny application instead of default shinyWidgets dependency.
#'
#' @param path Path to the file created with \code{\link{create_pretty}},
#'  the file must be in www/ directory of the application.
#'
#' @export
#'
#' @importFrom shiny addResourcePath
#' @importFrom htmltools htmlDependency
#'
use_pretty <- function(path) {
  path <- normalizePath(path = path, mustWork = TRUE)
  dirpath <- dirname(path = path)
  shiny::addResourcePath(prefix = "custom-pretty", directoryPath = dirpath)
  htmltools::htmlDependency(
    name = "pretty",
    version = "1000",
    src = c(href = "custom-pretty"),
    stylesheet = basename(path)
  )
}






