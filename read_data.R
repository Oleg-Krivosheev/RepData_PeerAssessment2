library(data.table)

print( system.time( sd <- fread("repdata-data-StormData.csv") ) )
sd <- sd[, F := as.integer(F)]
sd <- sd [, BGN_DATE := as.Date(BGN_DATE, format="%m/%d/%Y %H:%M:%S")]
str(sd)
save(sd, file="sd.rda", compress=FALSE)

#print( system.time( sdd <- setDT( read.csv("repdata-data-StormData.csv", stringsAsFactors=FALSE) ) ) )
#str(sdd)
#save(sdd, file="sdd.rda", compress=FALSE)


#all(sd == sdd)
#identical(sd, sdd)

