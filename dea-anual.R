install.packages(deaR)
library(deaR)

##############################2019################################
dea2019<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2019")

dea2019_dados<-read_data(dea2019,inputs=3:6,outputs=7:8,ud_inputs = 4)


#DEA ORIENTADO PELO PRODUTO - VARIAVEL ESCALA
dea2019_result <- model_basic(dea2019_dados,
                            orientation = "oo",
                            rts = "vrs")
summary(dea2019_result,exportExcel = TRUE,
        filename = "2019_OO_VRS.xlsx")
#DEA ORIENTADO PELO PRODUTO - CONSTANTE ESCALA
dea2019_result2<-model_basic(dea2019_dados,
                            orientation = "oo",
                            rts = "crs")
summary(dea2019_result2,exportExcel = TRUE,
        filename = "2019_OO_CRS.xlsx")

#DEA ORIENTADO PELO INSUMO - VARIAVEL ESCALA
dea2019_result3<-model_basic(dea2019_dados,
                             orientation = "io",
                             rts = "vrs",vtrans_i = 4.3)
summary(dea2019_result3,exportExcel = TRUE,
        filename = "2019_IO_VRS.xlsx")
efficiencies(dea2019_result3)
#DEA ORIENTADO PELO INSUMO - CONSTANTE EM ESCALA
dea2019_result4<-model_basic(dea2019_dados,
                             orientation = "io",
                             rts = "crs")
summary(dea2019_result4,exportExcel = TRUE,
        filename = "2019_IO_CRS.xlsx")

##############################2018################################
dea2018<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2018")

dea2018_dados<-read_data(dea2018,inputs=3:6,outputs=7:8)


#DEA ORIENTADO PELO PRODUTO - VARIAVEL ESCALA
dea2018_result<-model_basic(dea2018_dados,
                            orientation = "oo",
                            rts = "vrs")
summary(dea2018_result,exportExcel = TRUE,
        filename = "2018_OO_VRS.xlsx")
#DEA ORIENTADO PELO PRODUTO - CONSTANTE ESCALA
dea2018_result2<-model_basic(dea2018_dados,
                             orientation = "oo",
                             rts = "crs")
summary(dea2018_result2,exportExcel = TRUE,
        filename = "2018_OO_CRS.xlsx")

#DEA ORIENTADO PELO INSUMO - VARIAVEL ESCALA
dea2016_result3<-model_basic(dea2016_dados,
                             orientation = "io",
                             rts = "vrs")
summary(dea2016_result3,exportExcel = TRUE,
        filename = "2016_IO_VRS.xlsx")

#DEA ORIENTADO PELO INSUMO - CONSTANTE EM ESCALA
dea2018_result4<-model_basic(dea2018_dados,
                             orientation = "io",
                             rts = "crs")
summary(dea2018_result4,exportExcel = TRUE,
        filename = "2018_IO_CRS.xlsx")






dea2013<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2013")

dea2013_dados<-read_data(dea2013,inputs=3:6,outputs=7:8)

dea2013_result<-model_basic(dea2013_dados,
                            orientation = "io",
                            rts = "vrs")
summary(dea2013_result,exportExcel = TRUE,
        filename = "2013_OO_VRS.xlsx")
plot(efficiencies(dea2013_result))
plot(dea2013_result)
plot(dea2019_result)

#recortes
anos
dea2019<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2019")

supercortes<-list()

for (i in length(anos)) {
        supercortes[i]<-filter(dados==anos[i])}


filter(deadeflacionado=="2019")


summary(dea2019_result3)
