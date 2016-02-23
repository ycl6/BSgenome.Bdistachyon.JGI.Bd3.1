\name{BSgenome.Bdistachyon.JGI.Bd3.1}
\docType{package}

\alias{BSgenome.Bdistachyon.JGI.Bd3.1-package}
\alias{BSgenome.Bdistachyon.JGI.Bd3.1}
\alias{Bdistachyon}

\title{Full genome sequences for Brachypodium distachyon (JGI version 3.1)}

\description{
  Full genome sequences for Brachypodium distachyon Bd21 (Purple false brome) as provided by the US Department of Energy Joint Genome Institute (DOE-JGI; Phytozome v11) and stored in Biostrings objects. The chloroplast genome is obtained from the NCBI Nucleotide database under the accession EU325680.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
Bdistachyon_314_v3.0.fa.gz is obtained from https://phytozome.jgi.doe.gov/pz/portal.html#!info?alias=Org_Bdistachyon. The chloroplast genome is obtained from http://www.ncbi.nlm.nih.gov/nuccore/EU325680.
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{I-Hsuan Lin}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Bdistachyon.JGI.Bd3.1
genome <- BSgenome.Bdistachyon.JGI.Bd3.1
head(seqlengths(genome))
genome$Bd1  # same as genome[["Bd1"]]

## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
