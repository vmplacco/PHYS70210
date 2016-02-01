library(RPostgreSQL)

drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, host="localhost", port="5432", dbname="hes")
dbq <- dbGetQuery(con,"select henum,bhes,vhes,kphes from hesindex where kphes<3 and kphes>2.5 and vhes>10")

attach(dbq)

plot(bhes,vhes)

write.table(dbq,"test.dat")

dev.copy2eps(file="test.eps")

q("yes")
