
#' Search variables in a .scss file
#'
#' @param file File path in which to search for variables.
#'
#' @return A \code{data.frame} with 2 columns: \code{"variable"} and \code{"value"}.
#' @export
#'
#' @importFrom tools file_ext
#' @importFrom stats setNames
#'
#' @examples
#' # Create a scss file with some variables
#' tmp_scss_file <- tempfile(fileext = ".scss")
#' writeLines("//Some variables\n $color: red;\n $body-bg: #FFF;", tmp_scss_file)
#'
#' # Search for variables
#' search_vars(tmp_scss_file)
#'
#'
#' # Clean up
#' unlink(tmp_scss_file)
search_vars <- function(file) {
  path <- normalizePath(file, mustWork = TRUE)
  if (!identical(tools::file_ext(path), "scss"))
    stop("'file' must be a .scss file")
  vars <- readLines(con = path)
  vars <- trimws(vars)
  vars <- vars[startsWith(x = vars, prefix = "$")]
  if (length(vars) < 1) {
    return(data.frame(
      variable = character(0),
      value = character(0),
      stringsAsFactors = FALSE
    ))
  }
  vars <- lapply(
    X = strsplit(x = vars, split = ":"),
    FUN = function(x) {
      value <- paste(x[-1], collapse = ":")
      value <- gsub(";", "", value)
      value <- gsub("!default", "", value)
      setNames(
        as.list(trimws(value)),
        gsub("$", "", x = x[1], fixed = TRUE)
      )
    }
  )
  vars <- unlist(vars, recursive = FALSE)
  vars <- data.frame(
    variable = names(vars),
    value = unlist(vars, use.names = FALSE),
    stringsAsFactors = FALSE
  )
  vars <- vars[!duplicated(vars$variable), ]
  vars <- vars[!startsWith(vars$value, "("), ]
  class(vars) <- c("fresh_vars_table", class(vars))
  return(vars)
}




#' Search bs4Dash variables
#'
#' @param pattern A pattern to filter the results.
#' @param source Search variables in AdminLTE or Bootstrap or both.
#'
#' @return a \code{data.frame}
#' @export
#'
#' @examples
#' # Retrieve all variables
#' all_vars <- search_bs4dash_vars()
#' head(all_vars, 20)
#'
#' # Search for a pattern
#' head(search_bs4dash_vars("navbar"))
search_bs4dash_vars <- function(pattern = NULL, source = c("adminlte", "bootstrap")) {
  source <- match.arg(source, several.ok = TRUE)
  do.call("rbind", lapply(source, function(x) {
    if (identical(source, "adminlte")) {
      res <- search_vars(system.file(
        "assets/AdminLTE-3.0.4/_variables.scss",
        package = "fresh"
      ))
      res$source <- "adminlte"
    } else {
      res <- search_vars(system.file(
        "assets/AdminLTE-3.0.4/_bootstrap-variables.scss",
        package = "fresh"
      ))
      res$source <- "bootstrap"
    }
    if (!is.null(pattern))
      res <- res[grepl(pattern = pattern, x = res$variable), ]
    return(res)
  }))
}








