
library(FITSio)

fits<-readFITS('K003358.fits')

fits

summary(fits)
str(fits)
fits$header

plot(fits$imDat[,,1],type='l')
str(fits)

plot(fits$axDat$crval[1]+seq(1,,1.4132,fits$axDat$len[1]),fits$imDat[,1,1],type='l')


library(dygraphs)

lambdacont=data.frame(cbind(fits$axDat$crval[1]+seq(1,,1.4132,fits$axDat$len[1]),fits$imDat[,1,1]))

dygraph(lambdacont) %>% dyRangeSelector(height = 40)

q("yes")
