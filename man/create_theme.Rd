% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_theme.R
\name{create_theme}
\alias{create_theme}
\title{Create a custom Bootstrap theme}
\usage{
create_theme(
  ...,
  theme = c("default", "cerulean", "cosmo", "cyborg", "darkly", "flatly", "journal",
    "lumen", "paper", "readable", "sandstone", "simplex", "slate", "spacelab",
    "superhero", "united", "yeti"),
  output_file = NULL,
  include_assets = FALSE
)
}
\arguments{
\item{...}{Lists of CSS variables declared with \code{bs_vars_*} or \code{adminlte_*} functions.}

\item{theme}{Base theme to use.}

\item{output_file}{Specifies path to output file for compiled CSS.}

\item{include_assets}{Logical. Only use if \code{output_file} is not \code{NULL},
it will copy fonts file used in Bootstrap and Bootswatch themes. Note that output
path will be modified to add an intermediate directory \code{"stylesheets"} where
the CSS file will be located.}
}
\value{
If \code{output_file = NULL}, the function returns a string value of the compiled CSS.
If the output path is specified, the compiled CSS is written to that file and \code{invisible()} is returned.
}
\description{
Allow to customize some CSS variables from Bootstrap themes to be included in Shiny applications.
}
\examples{

# using a temporary file but use the path you want
tmp <- file.path(tempdir(), "custom-theme.css")

# Create the new theme
create_theme(
  theme = "default",
  bs_vars_color(
    brand_primary = "#75b8d1",
    brand_success = "#c9d175",
    brand_info = "#758bd1",
    brand_warning = "#d1ab75",
    brand_danger = "#d175b8"
  ),
  bs_vars_navbar(
    default_bg = "#75b8d1",
    default_color = "#FFFFFF",
    default_link_color = "#FFFFFF",
    default_link_active_color = "#FFFFFF"
  ),
  output_file = tmp
)

# Use the file created at the path provided
# in your Shiny app by moving it in the
# www/ folder, then use it in UI

library(shiny)
fluidPage(
  theme = "custom-theme.css"
)

# clean up
unlink(tmp)
}
