
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- gif resizing! gifsicle input.gif --resize 50x50 > resized.gif -->

# d3plot

  - This is our groups final project for PBHL-B430 Advanced Computing
  - The package gives the ability for users to make D3 plots
  - There is a basic Shiny Gadget that lets users explore their data
    using the D3 plots
  - A basic implementation of OOP is built in for project requirements

## Example

Loading `d3plot`:

``` r
library(d3plot)
```

### Scatter Plots

``` r
d3_scatter(mtcars, mph, hp)
```

<center>

![](inst/figures/scatter_gif.gif)

</center>
