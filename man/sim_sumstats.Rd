% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_linreg.R
\name{sim_sumstats}
\alias{sim_sumstats}
\title{Simulate GWAS Summary Statistics}
\usage{
sim_sumstats(RL, ngwas, beta, h2ge)
}
\arguments{
\item{RL}{Lower Cholesky factor of the LD matrix for the population.}

\item{ngwas}{Number of GWAS genotypes to sample.}

\item{beta}{Vector of latent eQTL effects for the causal gene.}

\item{h2ge}{Amount of phenotypic variance explained by the genetic component of gene expression.}
}
\value{
A data frame containing estimated GWAS beta, standard error, and p-values.
}
\description{
Simulate GWAS summary statistics directly using a multivariate normal approximation.
This method is efficient and designed for a large number of variants.
}
\examples{
R <- matrix(c(1, 0.5, 0.5, 1), nrow = 2)  # Example LD matrix
ngwas <- 1000                             # Number of GWAS genotypes to sample
beta <- rnorm(2)                          # Latent eQTL effects
h2ge <- 0.5                               # Heritability of gene expression
RL <- get_lower_chol(R)                              # Compute lower Cholesky decomposition
sim_sumstats(RL, ngwas, beta, h2ge)        # Simulate GWAS summary statistics
}
