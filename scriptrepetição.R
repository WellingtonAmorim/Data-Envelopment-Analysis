
library(dplyr)
#função de repetição
rm(list=ls())

#DEA - ORIENTADO PELO OUTPUT COM RETORNOS VARIAVEIS EM ESCALA
cortesoovrs<-list()
cortesoocrs<-list()
cortesiovrs<-list()
cortesiocrs<-list()
anosOOVRS<- 2008:2019#2013 all dmus eff total
#anosOOVRS = c(2008,2010,2012,2014,2015,2016,2017,2018,2019)

for (i in 1:length(anosOOVRS)){
  cortesoovrs[i] = deadeflacionado %>% 
              filter(Periodo == anosOOVRS[i]) %>%
              read_data(.,inputs=4:6,outputs=7:8) %>%
              model_basic(.,
                   orientation = "oo",
                   rts = "vrs") %>%
              summary(.,exportExcel = TRUE,
              filename = paste0("final/OOVRS_COMB/",
                                anosOOVRS[i],
                                "_OO_VRS.xlsx"))
}

#DEA - ORIENTADO PELO OUTPUT COM RETORNOS CONSTANTES EM ESCALA
anosOOCRS<-2008:2019


for (i in 1:length(anosOOCRS)){
  cortesoocrs[i] = deadeflacionado %>% 
    filter(Periodo == anosOOCRS[i]) %>%
    read_data(.,inputs=4:6,outputs=7:8) %>%
    model_basic(.,
                orientation = "oo",
                rts = "crs") %>%
    summary(.,exportExcel = TRUE,
            filename = paste0("final/OOCRS_COMB/",
                              anosOOCRS[i],
                              "_OO_CRS.xlsx"))
}

#DEA - ORIENTADO PELO INPUT COM RETORNOS VARIAVEIS EM ESCALA
anosIOVRS<-2008:2019#2013 all dmus eff total
#anosIOVRS = c(2008,2010,2012,2013,2014,2015,2016,2017,2018,2019,2020)


for (i in 1:length(anosIOVRS)){
  cortesiovrs[i] = deadeflacionado %>% 
    filter(Periodo == anosIOVRS[i]) %>%
    read_data(.,inputs=4:6,outputs=7:8) %>%
    model_basic(.,
                orientation = "io",
                rts = "vrs") %>%
    summary(.,exportExcel = TRUE,
            filename = paste0("final/IOVRS_COMB/",
                              anosIOVRS[i],
                              "_IO_VRS.xlsx"))
}

#DEA - ORIENTADO PELO INPUT COM RETORNOS CONSTANTES EM ESCALA
anosIOCRS<-2008:2019

for (i in 1:length(anosIOCRS)){
  cortesiovrs[i] = deadeflacionado %>% 
    filter(Periodo == anosIOCRS[i]) %>%
    read_data(.,inputs=4:6,outputs=7:8) %>%
    model_basic(.,
                orientation = "io",
                rts = "crs") %>%
    summary(.,exportExcel = TRUE,
            filename = paste0("final/IOCRS_COMB/",
                              anos[i],
                              "_IO_CRS.xlsx"))
}






#################################


dea2013 =  deadeflacionado %>% 
  filter(Periodo == 2013)

  paste0("açslkdjfalsd", anos[1])
  cor = deadeflacionado %>% 
    filter(Periodo == 2013) %>%
    read_data(.,inputs=4:6,outputs=7:8) %>%
    model_basic(.,
                orientation = "oo",
                rts = "vrs") %>%
    summary(.,exportExcel = TRUE,
            filename = paste0("final/","2013","_OO_VRS.xlsx"))
# oo vrs ; 
# oo crs ;
# io vrs ;  
# io crs