library(RPostgreSQL)

drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, host="localhost", port="5432", dbname="hes")

x <- data.frame(read.table("ANN5TIE.CSV",sep=",",header=TRUE))
dbWriteTable(con,"table3", x)

dbGetQuery(con, "ALTER TABLE table3 ADD COLUMN id SERIAL PRIMARY KEY;")

q("yes")
