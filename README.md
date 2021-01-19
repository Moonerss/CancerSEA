
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CancerSEA

<!-- badges: start -->

<!-- badges: end -->

The goal of CancerSEA is to …

## Installation

You can install the released version of CancerSEA from
[github](https://github.com/Moonerss/CancerSEA) with:

``` r
devtools::install_github("CancerSEA")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(CancerSEA)
## basic example code
available_pathways
#>  [1] "angiogenesis"    "apoptosis"       "cell_cycle"      "differentiation"
#>  [5] "dna_damage"      "dna_repair"      "emt"             "hypoxia"        
#>  [9] "inflammation"    "invasion"        "metastasis"      "proliferation"  
#> [13] "quiescence"      "stemness"
head(cell_cycle)
#>   ensembl_gene_id   symbol
#> 1 ENSG00000011426     ANLN
#> 2 ENSG00000143401   ANP32E
#> 3 ENSG00000156802    ATAD2
#> 4 ENSG00000087586    AURKA
#> 5 ENSG00000136492    BRIP1
#> 6 ENSG00000118412 CASP8AP2
```

``` r
## state score
scores <- state_score(expr, gene_set = list(cell_cycle$symbol, angiogenesis$symbol))
```
