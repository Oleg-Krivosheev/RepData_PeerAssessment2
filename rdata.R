library(data.table)

print( system.time( load("sd.rda") ) )

str(sd)

d <- setorder( sd[, .N, by=sd$EVTYPE], -N )
str(d)
print(d)

sd[, EVTYPE := ifelse( toupper(EVTYPE) %in% c("TSTM WIND",
                                      " TSTM WIND",
                                      "SEVERE THUNDERSTORM WINDS",
                                      "THUNDERSTORM WIND",
                                      "THUNDERSTORM WINDS"), "TDSTM WINDS", EVTYPE )]

sd[, EVTYPE := ifelse( toupper(EVTYPE) %in% c("FLOODING",
                                              "FLOOD",
                                              "MAJOR FLOOD"), "FLOOD", EVTYPE )]

sd[, EVTYPE := ifelse( toupper(EVTYPE) %in% c("HURRICANE/TYPHOON",
                                              "HURRICANE EMILY",
                                              "HURRICANE ERIN",
                                              "HURRICANE OPAL",
                                              "HURRICANE OPAL/HIGH WINDS",
                                              "TYPHOON"), "HURRICANE", EVTYPE )]

d <- setorder( sd[, .N, by=sd$EVTYPE], -N )
str(d)
print(d)
