getwd()   
setwd('/Users/vplacco/posdoc/nd/classes/2016_spring/PHYS70210/r_example')
getwd()
sessionInfo()  
citation() 


data <- read.table("table1.dat", header=T)
data
data_clean <- subset(data,teff!=-9999 & logg!=-9.999 & cfe!=-9.999)

names(data_clean)
summary(data_clean)

attach(data)
ls()
plot(teff,logg,xlim=c(7500,3500),ylim=c(5.5,-0.5),xlab="Teff",ylab="log(g)")

par(mfrow=c(1,2))
hist(teff)
plot(density(teff))

par(mfrow=c(1,1))
iso <- read.table("250.iso",header=FALSE)
plot(teff,logg,xlim=c(7500,3500),ylim=c(5.5,-0.5),cex=1.0,pch=2,col="gray")
lines(10^iso$V2,iso$V4,col="red")

library(KernSmooth)

plot(feh,cfe,cex=1.0,pch=1,col="red")
fehcfe=cbind(feh,cfe)
sm.fehcfe <- bkde2D(fehcfe,bandwidth=c(0.1,0.1))
image(sm.fehcfe$x1,sm.fehcfe$x2,sm.fehcfe$fhat)
contour(sm.fehcfe$x1,sm.fehcfe$x2,sm.fehcfe$fhat,add=T)
points(fehcfe,cex=0.2,pch=1,col="gray")

dev.copy2eps(file='fehcfe.eps')
dev.copy2pdf(file='fehcfe.pdf')

q("yes")
