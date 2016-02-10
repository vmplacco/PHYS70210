#!/bin/bash
# 
# rpsql: quick and dirty way to import
#        ascii tables to psql, creating
#        the table and populating header
# 
# usage: ./rpsql.sh dbname tablename file.csv
#
# author: vplacco@nd.edu 20160210
#
# TODO: nothing much.
#

# if input params are different than 3, advise and exit

if [ $# -ne 3 ]; then
	echo
	echo "You need 3 input parameters"
	echo 
	echo "usage: ./rpsql.sh dbname tablename file.csv"
	echo 
	exit
fi

#give nice names to keyboard inputs

dbname=$1  # name of local database
table=$2   # name of new table to be created
input=$3   # input CSV file

R --vanilla << R

library(RPostgreSQL)

drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, host="localhost", port="5432", dbname="$dbname")

x <- data.frame(read.table("$input",sep=",",header=TRUE))
dbWriteTable(con,"$table", x)

dbGetQuery(con, "ALTER TABLE $table ADD COLUMN id SERIAL PRIMARY KEY;")

q("yes")

R

exit
