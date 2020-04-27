

dropNulls <- function(x) {
  x[!vapply(x, is.null, FUN.VALUE = logical(1))]
}

vars_names <- function(x, prefix = NULL) {
  if (length(x) == 0) {
    return(x)
  }
  n_x <- names(x)
  n_x <- gsub(pattern = "_", replacement = "-", x = n_x)
  if (!is.null(prefix)) {
    n_x <- paste(prefix, n_x, sep = "-")
  }
  names(x) <- n_x
  x
}


is_bootstrap_vars <- function(vars) {
  unlist(lapply(vars, inherits, what = "bootstrap_vars"))
}


is_adminlte_vars <- function(vars) {
  unlist(lapply(vars, inherits, what = "adminlte_vars"))
}

is_bs4dash_vars <- function(vars) {
  unlist(lapply(vars, inherits, what = "bs4dash_vars"))
}

rd_color_tag <- function(color, label = color) {
  style <- sprintf(
    "width:12px;height:12px;background:%s;border-radius:2px;display:inline-block;margin-right:5px;",
    color
  )
  sprintf(
    "\\ifelse{html}{\\out{<span style='%s'></span>%s.}}{%s.}",
    style, label, label
  )
}






