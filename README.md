Pablo's 2013 gift
=================

This is a christmas gift for Pablo, made on the winter of 2013. You can view it (thanks to [RStudio](http://www.rstudio.com/)) live at [http://glimmer.rstudio.com/lcolladotor/pabloGift/](http://glimmer.rstudio.com/lcolladotor/pabloGift/).

## Installation instructions

```S
## If needed
install.packages("devtools")

## Pre-requisites from CRAN
install.packages(c("knitr", "shiny", "ggplot2"))


## This is the main package.
library(devtools)
install_github("pablo2013", "lcolladotor")
```

## Shiny Application


```S
## Either run from fitbitR
library(pablo2013)
pabloGift()

## Or from the web
library(shiny)
runUrl("https://github.com/lcolladotor/pablo2013/archive/master.zip",
subdir = "inst/pabloGift")
```
