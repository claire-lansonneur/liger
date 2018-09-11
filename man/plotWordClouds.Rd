% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Analogizer.R
\name{plotWordClouds}
\alias{plotWordClouds}
\title{Generate word clouds and t-SNE plots}
\usage{
plotWordClouds(object, dataset1 = NULL, dataset2 = NULL, num.genes = 30,
  min.size = 1, max.size = 4, factor.share.thresh = 10,
  log.fc.thresh = 1, umi.thresh = 30, frac.thresh = 0,
  pval.thresh = 0.05)
}
\arguments{
\item{object}{Analogizer object. Should call runTSNE before calling.}

\item{dataset1}{Name of first dataset (by default takes first two datasets for dataset1 and 2)}

\item{dataset2}{Name of second dataset}

\item{num.genes}{Number of genes to show in word clouds (default 30).}

\item{min.size}{Size of smallest gene symbol in word cloud (default 1).}

\item{max.size}{Size of largest gene symbol in word cloud (default 4).}

\item{factor.share.thresh}{Use only factors with a dataset specificity less than or equalt to 
threshold (default 10).}

\item{log.fc.thresh}{Lower log-fold change threshold for differential expression in markers
(default 1).}

\item{umi.thresh}{Lower UMI threshold for markers (default 30).}

\item{frac.thresh}{Lower threshold for fraction of cells expressing marker (default 0).}

\item{pval.thresh}{Upper p-value threshold for Wilcoxon rank test for gene expression
(default 0.05).}

\item{dataset.specificity}{Pre-calculated dataset specificity if available. Will calculate if not
available.}
}
\description{
Plots t-SNE coordinates of all cells by their loadings on each factor. Underneath it displays the
most highly loading shared and dataset-specific genes, with the size of the marker indicating 
the magnitude of the loading. 

It is recommended to call this function into a PDF due to the large number of 
plots produced.
}
\examples{
\dontrun{
# analogizer object, factorization complete 
analogy
analogy <- quantileAlignSNF(analogy)
analogy <- runTSNE(analogy)
pdf('word_clouds.pdf')
plotWordClouds(analogy, num.genes = 20)
dev.off()
}
}