######################################################
#MuViSU
#MDAG 2024 workshop
#CVA code chunks
#18 November 2024
######################################################


## ----Selecting the class means-----------------------------------------------------------------------------------------
biplot(state.x77) |> CVA(state.region) |> 
  means(which = c(2,3), label = TRUE) |> plot()


## ----Colours and shapes------------------------------------------------------------------------------------------------
biplot(state.x77) |> CVA(state.region) |> means(cex = c(1,2,3,4), 
    col = "red", pch = c(9,13,4,16)) |> plot()


## ----Labels------------------------------------------------------------------------------------------------------------
biplot(state.x77) |> CVA(state.region) |> means(label = TRUE, 
  label.side = "top", label.offset = 2, label.cex = 1) |> plot()


## ----Classification regions--------------------------------------------------------------------------------------------
biplot(state.x77) |> CVA(state.region) |> classify(col = c("cornflowerblue","darkolivegreen3","darkgoldenrod","aquamarine")) |> plot()


## ----Alpha bags--------------------------------------------------------------------------------------------------------
biplot(state.x77) |> CVA(state.region) |> 
  alpha.bags(alpha = c(0.85,0.9,0.95,0.99), lty = c(1,2,3,4)) |> plot()


## ----Concentration ellipses--------------------------------------------------------------------------------------------
biplot(state.x77) |> CVA(state.region) |> 
  ellipses(alpha = c(0.85,0.9,0.95,0.99), lwd = c(1,2,3,4)) |> plot()


## ----Using the fit.measures() function---------------------------------------------------------------------------------
bp <- biplot(state.x77) |> CVA(classes = state.region) |> fit.measures()


## ----Using the summary() function--------------------------------------------------------------------------------------
bp |> summary()


## ----Using the rotate() function---------------------------------------------------------------------------------------
par(mfrow=c(1,2))
bp |> plot()
bp |> rotate(rotate.degrees=90)|> plot()


## ----Using the reflect() function--------------------------------------------------------------------------------------
par(mfrow=c(1,2))
bp |> plot()
bp |> reflect(reflect.axis ="y")|> plot()


## ----Using the zoom argument in plot(), echo=TRUE, eval=FALSE----------------------------------------------------------
# bp |>  plot(zoom=TRUE)


## ----One dimensional CVA biplot----------------------------------------------------------------------------------------
biplot(state.x77,classes=state.region) |> CVA(dim.biplot=1) |> 
  classify() |> plot()


## ----One dimensional PCA biplot----------------------------------------------------------------------------------------
biplot(iris, group.aes = iris$Species) |> PCA(dim.biplot = 1) |> 
  density1D() |> ellipses() |> plot()


## ----3D biplot iris----------------------------------------------------------------------------------------------------
biplot(iris) |> PCA(group.aes = iris[,5], dim.biplot = 3)|> plot()


## ----3D biplot statex77------------------------------------------------------------------------------------------------
biplot(state.x77) |> CVA(classes = state.region,dim.biplot = 3) |> 
  means(col = "red", cex = 5) |> plot()