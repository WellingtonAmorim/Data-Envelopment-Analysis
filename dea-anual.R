install.packages(deaR)
library(deaR)

#Modelos básicos com retornos variáveis (VRS/BCC) e retornos constantes (CRS/CCR)
#Orientados tanto a Outputs quanto a Inputs


#Recorte temporal da base
dea2019<-subset(x = deadeflacionado,subset = deadeflacionado[,2]=="2019")

#etapa de leitura dos dados indicada pelo pacote deaR
dea2019_dados<-read_data(dea2019,inputs=3:6,outputs=7:8,ud_inputs = 4)


#DEA ORIENTADO PELO PRODUTO - VARIAVEL ESCALA

#modelo básico em que "oo"= Output Orientation e "vrs" = Variable return of scale. 
dea2019_result <- model_basic(dea2019_dados,
                            orientation = "oo",
                            rts = "vrs")
#mecanismo de extração dos resultados para excel
summary(dea2019_result,exportExcel = TRUE,
        filename = "2019_OO_VRS.xlsx")

#DEA ORIENTADO PELO PRODUTO - CONSTANTE ESCALA

#modelo básico em que "oo"= Output Orientation e "crs" = Constant return of scale. 
dea2019_result2<-model_basic(dea2019_dados,
                            orientation = "oo",
                            rts = "crs")

#mecanismo de extração dos resultados para excel
summary(dea2019_result2,exportExcel = TRUE,
        filename = "2019_OO_CRS.xlsx")

#DEA ORIENTADO PELO INSUMO - VARIAVEL ESCALA

#modelo básico em que "io"= Input Orientation e "vrs" = Variable return of scale. 
dea2019_result3<-model_basic(dea2019_dados,
                             orientation = "io",
                             rts = "vrs")

#mecanismo de extração dos resultados para excel
summary(dea2019_result3,exportExcel = TRUE,
        filename = "2019_IO_VRS.xlsx")


#DEA ORIENTADO PELO INSUMO - CONSTANTE EM ESCALA

#modelo básico em que "io"= Input Orientation e "crs" = Constant return of scale. 
dea2019_result4<-model_basic(dea2019_dados,
                             orientation = "io",
                             rts = "crs")

#mecanismo de extração dos resultados para excel
summary(dea2019_result4,exportExcel = TRUE,
        filename = "2019_IO_CRS.xlsx")









