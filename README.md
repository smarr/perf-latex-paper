Setup for Paper Writing with Performance Evaluation, Latex, ReBench, and KnitR
==============================================================================

The repository contains a setup for writing scientific papers using Latex, R,
and [KnitR]. In combination with [ReBench], this setup provides a complete and
automated way to run experiments, collect measurements, process the data, and
include it into scientific papers.

Compared to manual approaches, this setup guarantees complete traceability of
results and while it does not prevent mistakes in the data processing, it
ensures that no manual data entry is necessary, which could lead to all kind of
inconsistencies.

Using KnitR, ggplot2, and tikzDevice results in plots that integrate well into
the paper from an aesthetic perspective.

### Main Elements

 - `fast.tex` - the main tex file
 - `Makefile` - a makefile using [LaTeX-Mk] to generate all required files
 - `data`     - a folder containing data files such as benchmark results from [ReBench]
 - `sections` - a folder for paper subsections and KnitR files with literal R code
 - `sections/performance.Rnw` - example file to generate plots and statistics from benchmark results

### Software Dependencies

 - R (r-base)
 - [LaTeX-Mk] (latex-mk)
 - Latex packages: texlive-latex-extra texlive-fonts-recommended
 - R packages: plyr, ggplot2, etc. (`sudo Rscript scripts/libraries.R`)



[ReBench]: https://github.com/smarr/ReBench
[KnitR]:   http://yihui.name/knitr/
[LaTeX-Mk]: http://latex-mk.sourceforge.net/
