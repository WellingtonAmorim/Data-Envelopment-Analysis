
library(deaR)
dea2019<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2019")
dea2018<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2018")
dea2017<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2017")
dea2017<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2017")
dea2015<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2015")
dea2014<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2014")
dea2013<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2013")

#############################com deaR##################################
dea2016_dados<-read_data(dea2016,inputs=3:6,outputs=7:8)

super_result<-model_supereff(datadea = dea2019_dados,
                             orientation="io",
                             rts="vrs")
summary(super_result)
#########################################################################

library(TFDEA)

#SDEA com correção de Cook

#Aplicação para o ano de 2019
super2019<-SDEA(x=dea2019[,3:6],
                y=dea2019[,7:8],
                rts = "vrs", 
                orientation = "input",
                cook = TRUE)

sf2019<-data.frame(super2019)
summary(sf2019$eff)
write.table(sf2019,file = "sf2019.csv",sep = ";")

##
super2018<-SDEA(x=dea2018[,3:6],
                y=dea2018[,7:8],
                rts = "vrs", 
                orientation = "input",
                cook = TRUE)

sf2018<-data.frame(super2018)
summary(sf2018$eff)
write.table(sf2018,file = "sf2018.csv",sep = ";")

##
super2017<-SDEA(x=dea2017[,3:6],
                y=dea2017[,7:8],
                rts = "vrs", 
                orientation = "input",
                cook = TRUE)

sf2017<-data.frame(super2017)
summary(sf2017$eff)
write.table(sf2017,file = "sf2017.csv",sep = ";")



##
super2016<-SDEA(x=dea2016[,3:6],
                y=dea2016[,7:8],
                rts = "vrs", 
                orientation = "input",cook = TRUE)

sf2016<-data.frame(super2016)
summary(sf2016$eff)
write.table(sf2016,file = "sf2016.csv",sep = ";")

##
super2015<-SDEA(x=dea2015[,3:6],
                y=dea2015[,7:8],
                rts = "vrs", 
                orientation = "input",cook = TRUE)

sf2015<-data.frame(super2015)
summary(sf2015$eff)
write.table(sf2015,file = "sf2015.csv",sep = ";")

