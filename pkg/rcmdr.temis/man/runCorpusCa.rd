\name{runCorpusCa}
\alias{runCorpusCa}
\title{Correspondence analysis from a tm corpus}
\description{Compute a simple correspondence analysis on the document-term matrix of a tm corpus.}
\usage{runCorpusCa(corpus, variables = NULL, sparsity = 0.9, ...)}
\details{The function \code{runCorpusCa} runs a correspondence analysis (CA) on the
         document-term matrix that can be extracted from a \pkg{tm} corpus by calling
         the \code{\link{DocumentTermMatrix}} function, or directly from the \code{dtm}
         object if present.

         If no variable is passed via the \code{variables} argument, a CA is run on the
         full document-term matrix (possibly skipping sparse terms, see below). If one or more
         variables are chosen, the CA will be based on a staked table whose rows correspond to
         the levels of the variables: each cell contains the sum of occurrences of a given term in
         all the documents of the level. Documents that contain a \code{NA} are skipped for this
         variable, but taken into account for the others, if any.

         In all cases, variables that have not been selected are added as passive rows. If at least
         one variable is passed, documents are also passive rows, while they are active otherwise.

         The \code{sparsity} argument is passed to \code{\link{removeSparseTerms}}
         to remove less significant terms from the document-term matrix. This is
         especially useful for big corpora, which matrices can grow very large, prompting
         \code{ca} to take up too much memory.}
\arguments{
  \item{corpus  }{A \pkg{tm} corpus.}
  \item{sparsity}{Optional sparsity threshold (between 0 and 1) below which terms should be
                  skipped. See \code{removeSparseTerms} from tm.}
  \item{...     }{Additional parameters passed to \code{\link{ca}}.}
          }
\value{A \code{ca} object as returned by the \code{\link{ca}} function.}

\seealso{\code{\link{ca}}, \code{\link{meta}}, \code{\link{removeSparseTerms}},
         \code{\link{DocumentTermMatrix}} }
