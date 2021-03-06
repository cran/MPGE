#' MPGE: an R package to implement a two-step approach to testing overall effect of
#'  gene-environment interaction for multiple phenotypes.
#'
#'Interaction between a genetic variant (e.g., a SNP) and an environmental variable
#' (e.g., physical activity) can have a shared effect on multiple phenotypes
#'  (e.g., LDL and HDL). MPGE is a two-step method to test for an overall interaction
#'   effect on multiple phenotypes. In first step, the method tests for an overall
#'    marginal genetic association between the genetic variant and the multivariate
#'     phenotype. In the second step, SNPs which show an evidence of marginal
#'      overall genetic effect in the first step are prioritized while testing
#'       for an overall GxE effect. That is, a more liberal threshold of
#'       significance level is considered in the second step while testing for
#'        an overall GxE effect for these promising SNPs compared to the other
#'         SNPs.
#'
#' The package consists of following functions:
#'\code{\link{mv_G_GE}}, \code{\link{WHT}}; \code{\link{SST}}.
#'
#' @section Functions:
#' \describe{
#' \item{\code{\link{mv_G_GE}}}{for a batch of genetic variants, this function provides
#'          two different p-values for each genetic variant, one from the test
#'           of marginal overall genetic association with multiple phenotypes
#'           , and the other from the test of overall GxE effect on multivariate
#'            phenotype allowing for a possible marginal effect due to the genetic
#'             variant and a marginal effect due to the environmental variable.}
#' \item{\code{\link{WHT}}}{this function implements the weighted multiple hypothesis testing
#'               procedure to adjust for multiple testing while combining the two steps of
#'                testing gene-environment interaction in the two-step GxE testing procedure,
#'                 given two sets of p-values obtained using the previous function mv_G_GE for
#'                  genome-wide genetic variants.}
#' \item{\code{\link{SST}}}{this function implements
#'                   the subset multiple hypothesis testing procedure to adjust for multiple
#'                   testing while combining the two steps of testing gene-environment
#'                   interaction based on the same two sets of p-values described above.}
#'                   }
#' @references A Majumdar, KS Burch, S Sankararaman, B Pasaniuc, WJ Gauderman, JS Witte (2020)
#' A two-step approach to testing overall effect of gene-environment interaction for multiple phenotypes.
#' bioRxiv, doi: https://doi.org/10.1101/2020.07.06.190256
#'
#'
#' @docType package
#' @importFrom stats lm
#' @importFrom utils capture.output
#' @importFrom utils read.table
#'
#' @name MPGE
#'
NULL
