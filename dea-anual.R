install.packages(deaR)
library(deaR)

#Modelos básicos com retornos variáveis (VRS/BCC) e retornos constantes (CRS/CCR)
#Orientados tanto a Outputs quanto a Inputs

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


#DEA ORIENTADO PELO INSUMO - CONSTANTE EM ESCALA

dea2019_result4<-model_basic(dea2019_dados,
                             orientation = "io",
                             rts = "crs")

summary(dea2019_result4,exportExcel = TRUE,
        filename = "2019_IO_CRS.xlsx")









