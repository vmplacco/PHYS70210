library(RCurl)
library(ggplot2)

mySqlQuery = "SELECT objID, htmID, z, ra, dec, cx, cy, cz, class, subClass, type, 
survey, programname FROM SpecPhoto WHERE (htmid*37 & 0x000000000000FFFF) < (65)"

mySqlQuery = gsub(pattern="\n",replacement=" ",x=mySqlQuery)
urlBase = "http://skyserver.sdss.org/dr12/en/tools/search/x_sql.aspx"
X = getForm(urlBase, cmd = mySqlQuery, format = "csv")
write(X,file="SDSSsample.csv")

A = read.table("SDSSsample.csv", header=TRUE, sep=",", dec=".", comment.char="#")

str(A)

xtabs(~class, A)
xtabs(~survey, A)

ggplot() +
   geom_point(data=A, aes(x=ra, y=dec, colour=class), size=1) +
   scale_colour_hue(l=50) +
   coord_map("mollweide",xlim=c(0,360),ylim=c(-90,90)) +
   scale_y_continuous(breaks = seq(-90, 90, 30)) +
   scale_x_continuous(breaks = seq(0, 360, 60)) +
   theme(axis.title = element_blank()) +
   theme(axis.ticks = element_blank(), axis.text = element_blank()) + 
   theme(panel.border = element_blank()) + 
   theme(panel.grid.major = element_line(colour="darkgrey")) + 
   ggtitle("SDSS DR12 coverage") + 
   theme(plot.title = element_text(size = rel(2)))

dev.copy2pdf(file="dr12_cov.pdf")

q("yes")
