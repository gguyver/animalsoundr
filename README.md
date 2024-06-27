
<!-- README.md is generated from README.Rmd. Please edit that file -->

# animalsoundr

<!-- badges: start -->

<!-- badges: end -->

The goal of animalsoundr is to go through the R packaging process,
making and building a simple package that allows us to practice the
packaging process.

## Installation

You can install the development version of animalsoundr from
[GitHub](https://github.com/gguyver/animalsoundr) with:

``` r
# install.packages("devtools")
devtools::install_github("gguyver/animalsoundr")
```

## Example

This is a basic example which shows you how to use the only function:

``` r
library(animalsoundr)
## basic example code
animal_sounds("dog", "woof")
#> [1] "The dog says woof, woof, woof!"
```
