#' @keywords internal
#' @export
#' @method as.list textmodel_newsmap
#' @param ... passed to [coef.textmodel_newsmap]
as.list.textmodel_newsmap <- function(x, ...) {
    lapply(coef(x, ...), names)
}

#' @export
#' @method as.dictionary textmodel_newsmap
as.dictionary.textmodel_newsmap <- function(x, ...) {
    dictionary(lapply(coef(x, ...), names), separator = x$concatenator)
}

#' @export
#' @method print textmodel_newsmap
print.textmodel_newsmap <- function(x, ...) {
    cat("\nCall:\n")
    print(x$call)
    cat("\n")
}

unused_dots <- function(...) {
    arg <- names(list(...))
    if (length(arg) == 1) {
        warning(arg[1], " argument is not used.\n", call. = FALSE)
    } else if (length(arg) > 1) {
        warning(paste0(arg, collapse = ", "), " arguments are not used.\n", call. = FALSE)
    }
}
