######################################################
#MuViSU
#MDAG 2024 workshop
#CA code chunks
#18 November 2024
######################################################

## Contingency table
cross_tab <- HairEyeColor[,,2]
cross_tab


biplot(HairEyeColor[,,2], center = TRUE) |> CA()


## Correspondence table
P_mat <- cross_tab/sum(cross_tab)
P_mat


## Row masses
ca.out <- biplot(HairEyeColor[,,2], center = FALSE) |> CA()
ca.out$Dr


## Column masses
ca.out <- biplot(HairEyeColor[,,2], center = FALSE) |> CA()
ca.out$Dc


# CA()


## First CA plot: default arguments
biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA() |> 
  plot()


## Symmetric variant with a legend
biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Symmetric") |> samples(col = c("darkmagenta", "forestgreen"), 
                                       cex = 1.7, opacity = 0.7) |> legend.type(samples = TRUE) |> plot()


## Standard variant
biplot(HairEyeColor[,,2], center = FALSE) |> CA(variant = "Stand") |> 
  samples(col = c("darkmagenta", "forestgreen"), cex = 1.7, opacity = 0.7) |> 
  plot()


## Standard variant with and without lambda scaling
par(mfrow=c(1,2))
biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Stand", lambda.scal = FALSE) |>
  samples(col=c("palevioletred3","purple4"), cex = 1.7, opacity = 0.7) |> 
  plot()
biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Stand", lambda.scal = TRUE) |>
  samples(col=c("palevioletred3","purple4"), cex = 1.7, opacity = 0.7) |> 
  plot()


## Interpolating new samples
biplot(HairEyeColor[,,2], center = FALSE) |> CA(variant = "Symmetric") |>  
  samples(pch = c(0,2), cex = 1.5) |> 
  interpolate(newdata = HairEyeColor[,,1]) |> 
  newsamples(col = c("orange","purple"), pch = c(15,17), cex = 1.5) |> 
  plot()    


## Evaluating the fit measures
ca.out <- biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Symmetric") |> 
  fit.measures()


## ----------------------------------------------------------------------------------------------------------------------
ca.out$quality


## ----------------------------------------------------------------------------------------------------------------------
ca.out$adequacy


## ----------------------------------------------------------------------------------------------------------------------
ca.out$row.predictivities


## ----------------------------------------------------------------------------------------------------------------------
ca.out$col.predictivities


## Additional (not in slides)

## 1D biplot
biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Stand", lambda.scal = TRUE, dim.biplot = 1) |>
  samples(col=c("darkmagenta", "forestgreen"), cex = 1.5) |> 
  plot()

## 3D biplot
biplot(HairEyeColor[,,2], center = FALSE) |> 
  CA(variant = "Stand", lambda.scal = TRUE, dim.biplot = 3) |>
  samples(col=c("darkmagenta", "forestgreen"), cex = 1.5) |> 
  plot()