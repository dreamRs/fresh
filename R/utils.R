

dropNulls <- function(x) {
  x[!vapply(x, is.null, FUN.VALUE = logical(1))]
}

vars_names <- function(x, prefix = NULL) {
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
