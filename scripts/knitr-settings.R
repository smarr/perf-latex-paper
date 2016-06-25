knit_hooks$set(document = function(x) {
  y <- gsub('(\\\\input\\{.*?\\})[\n]+', '\\1%\n', x) 
  z <- gsub("KKSOMmtKK", "\\\\SOMmt", y)
  gsub("KKSOMpeKK", "\\\\SOMpe", z)
})

opts_chunk$set(
    fig.path="figures/",
    dev=c('tikz', 'svg'),
    dev.args=list(pointsize=10),
    #dev='pdf',c('tikz', 'svg'),
    echo=FALSE,
    external=FALSE,
    tidy=FALSE)

## Make sure that TikZDevice is used for measuring size of latex labels
options(device = function(...) tikzDevice::tikz(tempfile(), ...))
