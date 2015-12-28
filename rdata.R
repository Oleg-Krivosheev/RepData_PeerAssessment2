library(data.table)

print( system.time( load("sd.rda") ) )

str(sd)

d <- setorder( sd[, .N, by = EVTYPE], -N )
str(d)
print(d)

#qq <- d[EVTYPE %like% "HEAVY RAIN"]
#View(qq)

r <- setorder( setnames( sd[ , sum(PROPDMG), by=EVTYPE], "V1", "TOTALDMG" ), -TOTALDMG)
View(r)

