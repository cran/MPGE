## ----install_package, eval=FALSE, collapse = TRUE-----------------------------
#  #install.packages("MPGE")
#  #library("MPGE")

## ----load_pheno, collapse = TRUE----------------------------------------------
library("MPGE")
# Load the phenotype data
phenofile <- system.file("extdata", "phenotype_data.rda", package = "MPGE")
head(phenotype_data)

## ----load_geno, collapse = TRUE-----------------------------------------------
library("MPGE")
# Load the genotype data
genofile <- system.file("extdata", "genotype_data.rda", package = "MPGE")
head(genotype_data)

## ----load_env, collapse = TRUE------------------------------------------------
library("MPGE")
# Load the data for environmental variable
genofile <- system.file("extdata", "environment_data.rda", package = "MPGE")
head(environment_data)
# For example, non-smoker coded as 0 and smoker coded as 1.

## ----example_mv_G_GE, collapse = TRUE-----------------------------------------
#Compute the p-value of testing marginal multivariate genetic association. And, compute the p-value of testing multivariate GxE effect in presence of possible marginal genetic effect and marginal environmental effect on the phenotypes.
result <- mv_G_GE(phenotype_data, genotype_data, environment_data)
result

## ----load_pvalues, collapse = TRUE--------------------------------------------
library("MPGE")
# Load the p-values
pvalues <- system.file("extdata", "mv_G_GxE_pvalues.rda", package = "MPGE")
head(mv_G_GxE_pvalues)

## ----example_WHT, collapse = TRUE---------------------------------------------
#Run WHT to implement the weighted hypothesis testing to adjust for multiple comparison, and find the significant SNPs with an overall GxE effect.
result <- WHT(mv_G_GxE_pvalues)
str(result)

## ----example_SST, collapse = TRUE---------------------------------------------
#Run SST to implement the subset testing to adjust for multiple comparison, and find the significant SNPs with an overall GxE effect.
result <- SST(mv_G_GxE_pvalues)
str(result)

