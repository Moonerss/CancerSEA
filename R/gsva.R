#' @title The functional state scores of single cells
#' @name state_score
#' @details The functional state scores of single cells
#' @author Erjie Zhao
#' @description The functional state scores of single cells
#' @import GSVA
#' @param expr Gene expression data which can be given as a matrix of expression values where rows correspond to genes and columns correspond to cells or samples.
#' @param gene_set Gene sets provided as a list, it must be match with the gene in expression profiles.
#' @param min_size Minimum size of the resulting gene sets.
#' @param max_size Maximum size of the resulting gene sets.
#' @param parallel_size Number of threads of execution to use when doing the calculations in parallel.
#' @param verbose Gives information about each calculation step. Default: FALSE.
#' @export
state_score <- function(expr, gene_set, min_size = 1, max_size = Inf, parallel_size = 1L,
                        verbose = FALSE) {
  res <- GSVA::gsva(expr, gset.idx.list = gene_set, min.sz = min_size,
                    max.sz = max_size, parallel.sz = parallel_size, verbose = verbose,
                    method = "gsva", kcdf = "Gaussian")
  return(res)
}
