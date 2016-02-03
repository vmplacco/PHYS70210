
library(FITSio)
library(dygraphs)

fits<-readFITS('K003358.fits')

fits

summary(fits)
str(fits)

fits$header

plot(fits$imDat[,,1],type='l')
str(fits)

plot(fits$axDat$crval[1]+seq(1,,1.4132,fits$axDat$len[1]),fits$imDat[,1,1],type='l')

lambdacont=data.frame(cbind(fits$axDat$crval[1]+seq(1,,1.4132,fits$axDat$len[1]),fits$imDat[,1,1]))

dygraph(lambdacont)                               %>%
  
  dyRangeSelector(height = 40)                    %>%
  dyAxis("y", label = "Counts")                   %>%
  dyShading(from = "4250", to = "4350")           %>%
  dyAxis("x", label = "Wavelength (angstrom)")    %>%
  dyEvent("3933", "CaII K", labelLoc = "bottom")  %>%
  dyEvent("4861", "H beta", labelLoc = "bottom")

q("yes")
