
# cat(
#   "Au lac de tes yeux tr\u00e8s profond",
#   "Mon pauvre c\u0153ur se noie et fond",
#   "L\u00e0 le d\u00e9font",
#   "Dans l\'eau d\'amour et de folie",
#   "Souvenir et M\u00e9lancolie",
#   "",
#   "Guillaume Apollinaire",
#   sep = "\n"
# )



#' @title Create a custom Bootstrap theme
#'
#' @description Allow to customize some CSS variables from Bootstrap themes to be included in Shiny applications.
#'
#' @param ... Lists of CSS variables declared with \code{bs_vars_*} or \code{adminlte_*} functions.
#' @param theme Base theme to use.
#' @param output_file Specifies path to output file for compiled CSS.
#' @param include_assets Logical. Only use if \code{output_file} is not \code{NULL},
#'  it will copy fonts file used in Bootstrap and Bootswatch themes. Note that output
#'  path will be modified to add an intermediate directory \code{"stylesheets"} where
#'  the CSS file will be located.
#'
#' @return If \code{output_file = NULL}, the function returns a string value of the compiled CSS.
#'  If the output path is specified, the compiled CSS is written to that file and \code{invisible()} is returned.
#'
#' @export
#'
#' @importFrom sass sass sass_options
#'
#' @examples
#'
#' # using a temporary file but use the path you want
#' tmp <- file.path(tempdir(), "custom-theme.css")
#'
#' # Create the new theme
#' create_theme(
#'   theme = "default",
#'   bs_vars_color(
#'     brand_primary = "#75b8d1",
#'     brand_success = "#c9d175",
#'     brand_info = "#758bd1",
#'     brand_warning = "#d1ab75",
#'     brand_danger = "#d175b8"
#'   ),
#'   bs_vars_navbar(
#'     default_bg = "#75b8d1",
#'     default_color = "#FFFFFF",
#'     default_link_color = "#FFFFFF",
#'     default_link_active_color = "#FFFFFF"
#'   ),
#'   output_file = tmp
#' )
#'
#' # Use the file created at the path provided
#' # in your Shiny app by moving it in the
#' # www/ folder, then use it in UI
#'
#' library(shiny)
#' fluidPage(
#'   theme = "custom-theme.css"
#' )
#'
#' # clean up
#' unlink(tmp)
create_theme <- function(...,
                         theme = c("default", "cerulean", "cosmo", "cyborg", "darkly", "flatly",
                                   "journal", "lumen", "paper", "readable", "sandstone", "simplex",
                                   "slate", "spacelab", "superhero", "united", "yeti"),
                         output_file = NULL, include_assets = FALSE) {
  theme <- match.arg(theme)
  vars <- list(...)
  if (all(is_bootstrap_vars(vars))) {
    framework <- "bootstrap"
  } else if (all(is_adminlte_vars(vars))) {
    framework <- "adminlte"
  } else if (all(is_bs4dash_vars(vars))) {
    framework <- "bs4dash"
  } else {
    if (any(is_bootstrap_vars(vars)) & any(is_adminlte_vars(vars))) {
      stop("You cannot mix Bootstrap and AddminLTE variables", call. = FALSE)
    } else {
      if (any(is_bootstrap_vars(vars))) {
        framework <- "bootstrap"
        warning("Using custom variables with Bootstrap SCSS files", call. = FALSE)
      } else if (any(is_adminlte_vars(vars))) {
        framework <- "adminlte"
        warning("Using custom variables with adminlte SCSS files", call. = FALSE)
      } else if (any(is_bs4dash_vars(vars))) {
        framework <- "bs4dash"
        warning("Using custom variables with bs4dash SCSS files", call. = FALSE)
      } else {
        framework <- "bootstrap"
        warning("Using custom variables with Bootstrap SCSS files", call. = FALSE)
      }
    }
  }
  is_file <- is_sass_file(vars)
  vars <- Reduce(c, vars[!is_file])
  if (identical(framework, "bootstrap")) {
    if (identical(theme, "default")) {
      input <- list(
        vars,
        bootstrap_scss()
      )
    } else {
      input <- list(
        c(vars, list(
          "icon-font-path" = shQuote(paste0(system.file("assets/bootstrap3/default/fonts/bootstrap", package = "fresh"), "/"))
        )),
        bootswatch_vars_scss(theme),
        bootstrap_scss(),
        bootswatch_scss(theme)
      )
    }
  } else if (identical(framework, "adminlte")) {
    input <- list(
      vars,
      adminlte2_scss(),
      adminlte2_skin_scss()
    )
  } else if (identical(framework, "bs4dash")) {
    input <- list(
      vars,
      adminlte3_scss()
    )
  }
  if (sum(is_file) > 0) {
    input <- c(vars[is_file], input)
  }
  if (!is.null(output_file) && isTRUE(include_assets)) {
    path <- normalizePath(path = output_file, mustWork = FALSE)
    file.copy(
      from = system.file("assets/bootstrap3/default/fonts", package = "fresh"),
      to = dirname(path), recursive = TRUE
    )
    output_dir <- file.path(dirname(path), "stylesheets")
    dir.create(path = output_dir)
    output_file <- file.path(output_dir, basename(output_file))
    warning(
      "Output path has been modified to include assets: ",
      output_file, call. = FALSE
    )
  }
  sass(
    input = input,
    output = output_file,
    options = sass_options(output_style = "compressed")
  )
}

#' @importFrom sass sass_file
bootstrap_scss <- function() {
  sass_file(
    input = system.file(
      "assets/bootstrap3/default/stylesheets/_bootstrap.scss",
      package = "fresh"
    )
  )
}

#' @importFrom sass sass_file
bootswatch_vars_scss <- function(theme) {
  sass_file(
    input = system.file(
      "assets/bootstrap3", theme, "_variables.scss",
      package = "fresh"
    )
  )
}

#' @importFrom sass sass_file
bootswatch_scss <- function(theme) {
  sass_file(
    input = system.file(
      "assets/bootstrap3", theme, "_bootswatch.scss",
      package = "fresh"
    )
  )
}


#' @importFrom sass sass_file
adminlte2_scss <- function() {
  sass_file(input = system.file(
    "assets/AdminLTE-2.4.10/scss/AdminLTE.scss",
    package = "fresh"
  ))
}


#' @importFrom sass sass_file
adminlte2_skin_scss <- function() {
  sass_file(input = system.file(
    "assets/AdminLTE-2.4.10/scss/skins/_all-skins.scss",
    package = "fresh"
  ))
}



#' @importFrom sass sass_file
adminlte3_scss <- function() {
  sass_file(input = system.file(
    "assets/AdminLTE-3.0.4/AdminLTE.scss",
    package = "fresh"
  ))
}




