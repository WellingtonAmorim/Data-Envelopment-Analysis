

deadeflacionado <- read_excel("base de dados/deadeflacionado_comb.xlsx")
dados<-deadeflacionado
Dados_malq<-read_malmquist(dados,percol=2,
                           arrangement = "vertical",
                           inputs=3:6,
                           outputs=7:8)
                           


#Malmquist orientado produto - retornos variaveis escala
plot(malmquist_index(dados_malq,orientation = "oo",rts = "vrs"))

#Pré visualização dos resultados 
summary((malmquist_index(dados_malq,orientation = "oo",rts = "vrs")))

#Atribuição do modelo a um objeto
malmoovrs<-malmquist_index(dados_malq,orientation = "oo",rts = "vrs")

#Mecanismo de exportação dos resultados para excel.
summary(malmoovrs,exportExcel = TRUE,
        filename =paste0("final/MALMQUIST/", "malmoovrs.xlsx"))

        
        
#malmquist orientado produto - constantes variaveis escala
plot(malmquist_index(dados_malq,orientation = "oo",rts = "crs"))

#Pré visualização dos resultados 
summary((malmquist_index(dados_malq,orientation = "oo",rts = "crs")))

#Atribuição do modelo a um objeto
malmoocrs<-malmquist_index(dados_malq,orientation = "oo",rts = "crs")

#Mecanismo de exportação dos resultados para excel.
summary(malmoocrs,
        exportExcel = TRUE,
        filename =paste0("final/MALMQUIST/", "malmoocrs.xlsx"))



#malmquist orientado insumo - retornos variaveis escala
plot(malmquist_index(dados_malq,orientation = "io",rts = "vrs"))

#Pré visualização dos resultados 
summary((malmquist_index(dados_malq,orientation = "io",rts = "vrs")))

#Atribuição do modelo a um objeto
malmiovrs<-malmquist_index(dados_malq,orientation = "io",rts = "vrs")

#Mecanismo de exportação dos resultados para excel.
summary(malmiovrs,exportExcel = TRUE,filename =paste0("final/MALMQUIST/", "malmiovrs.xlsx"))



#malmquist orientado insumo - retornos constantes escala
plot(malmquist_index(dados_malq,orientation = "io",rts = "crs"))

#Pré visualização dos resultados 
summary((malmquist_index(dados_malq,orientation = "io",rts = "crs")))

#Atribuição do modelo a um objeto
malmiocrs<-malmquist_index(dados_malq,orientation = "io",rts = "crs")

#Mecanismo de exportação dos resultados para excel.
summary(malmiocrs,
        exportExcel = TRUE,
        filename =paste0("final/MALMQUIST/", "malmiocrs.xlsx"))
