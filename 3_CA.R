## ------------------------------------------------------------------
cross_tab <- HairEyeColor[,,2]
cross_tab


## ----warning=TRUE--------------------------------------------------
biplot(HairEyeColor[,,2], center = TRUE) |> CA()


## ------------------------------------------------------------------
P_mat <- cross_tab/sum(cross_tab)
P_mat


## ------------------------------------------------------------------
ca.out <- biplot(HairEyeColor[,,2], center = FALSE) |> CA()
ca.out$Dr


## ------------------------------------------------------------------
ca.out <- biplot(HairEyeColor[,,2], center = FALSE) |> CA()
ca.out$Dc


## ----echo = TRUE, eval = FALSE-------------------------------------
## CA()


## ------------------------------------------------------------------
#| code-line-numbers: "|2|"
#| fig-height: 7
biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA() |> 
  plot()


## ------------------------------------------------------------------
#| code-line-numbers: "|2|"
#| fig-height: 7
biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Symmetric") |> samples(cex = 1.5) |> 
  legend.type(samples = TRUE) |> 
  plot()


## ------------------------------------------------------------------
#| code-line-numbers: "|2|"
#| fig-height: 7
biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Stand") |> samples(cex = 1.5) |> 
  plot()


## ------------------------------------------------------------------
#| code-line-numbers: "|2|"
#| fig-height: 7
biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Stand", lambda.scal = TRUE) |>
  samples(col=c("palevioletred1","purple4"), cex = 1.5) |> 
  plot()


## ------------------------------------------------------------------
#| code-line-numbers: "|3|,|4|"
#| fig-height: 7
biplot(HairEyeColor[,,2], center = FALSE) |> CA(variant = "Symmetric") |>  
  samples(pch = c(0,2), cex = 1.5) |> 
  interpolate(newdata = HairEyeColor[,,1]) |> 
  newsamples(col = c("orange","purple"), pch = c(15,17), cex = 1.5) |> 
  plot()    


## ------------------------------------------------------------------
#| code-line-numbers: "|3|"
#| fig-height: 7
ca.out <- biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Symmetric") |> 
  fit.measures()


## ------------------------------------------------------------------
ca.out$quality


## ------------------------------------------------------------------
ca.out$adequacy


## ------------------------------------------------------------------
#| code-line-numbers: "|3|"
#| fig-height: 7
ca.out <- biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Symmetric") |> 
  fit.measures()


## ------------------------------------------------------------------
ca.out$row.predictivities


## ------------------------------------------------------------------
ca.out$col.predictivities

