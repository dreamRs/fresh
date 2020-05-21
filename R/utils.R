

dropNulls <- function(x) {
  x[!vapply(x, is.null, FUN.VALUE = logical(1))]
}

vars_names <- function(x, prefix = NULL) {
  if (length(x) == 0) {
    return(x)
  }
  if (length(x) == 1 && is.list(x)  && inherits(x[[1]], "fresh_vars_table")) {
    x <- setNames(as.list(x[[1]]$value), x[[1]]$variable)
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
  vapply(vars, inherits, what = c("bootstrap_vars", "bootstrap_vars_file"), FUN.VALUE = logical(1))
}

is_adminlte_vars <- function(vars) {
  vapply(vars, inherits, what = "adminlte_vars", FUN.VALUE = logical(1))
}

is_bs4dash_vars <- function(vars) {
  vapply(vars, inherits, what = "bs4dash_vars", FUN.VALUE = logical(1))
}

is_sass_file <- function(vars) {
  unlist(lapply(vars, inherits, what = "sass_file"))
}

rd_col <- function(color, label = color) {
  style <- sprintf(
    "width:12px;height:12px;background:%s;border-radius:2px;display:inline-block;margin-right:5px;",
    color
  )
  sprintf(
    "\\ifelse{html}{\\out{<span style='%s'></span>%s}}{%s}",
    style, label, label
  )
}






