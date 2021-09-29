# Data-Envelopment-Analysis
Análise de DEA para empresas ferroviárias.

## Requisitos
* R-cran/Rstudio
* Packages: 
```{r}
install.packages(deaR)
install.packages(dplyr)
install.packages("lpSolveAPI")
install.packages("TFDEA")
```

## Esta análise pode ser divida em 5 etapas abaixo descritas: 
* 1- Seleção de dados/tratamento, 
* 2- Modelos básicos DEA (BCC / CRR - I/O), 
* 3- Malmquist Index, 
* 4- Análise de Supereficiência e 
* 4.1- Correção de Cook. 

### 1- Seleção de dados/tratamento

As seleções de dados foram fundamentadas na literatura sobre DEA e ferrovias.!

* sinteticamente as principais referencias são destacadas abaixo:
		
![image](https://user-images.githubusercontent.com/91072668/135292058-078f09a1-da5b-4c06-b04b-6edd6c28ae6c.png)


**Obs: Os dados foram normalizados pela razão valor/média da variável em questão.** 

### 2- Modelos básicos DEA (BCC/CRR - I/O)

Foram aplicados os seguintes modelos básicos:

* BCC-I / BCC-O (Modelo com retornos **variáveis** em escala com orientação tanto ao insumo quanto ao produto.)
* CRR-I / CRR-O (Modelo com retornos **constantes** em escala com orientação tanto ao insumo quanto ao produto.)

Em síntese os modelos DEA visam otimizar por meio de uma orientação do produto ou do insumo a combinação mais eficiente. atribuindo pesos de forma a maximizar
a razão produto/insumo (Pesquisa Operacional).

### 3- Malmquist Index

#### Investimentos aplicados em um período podem ter seus retornos em T+1 e dependendo da sua natureza em T+n, ou seja, seus efeitos podem ser sentidos no decorrer do tempo.**

* Mudança de eficiência no tempo:
1. Window Analysis: analisa-se os scores de eficiência obtidos dos modelos clássicos e o seu comportamento ao longo do tempo.
2. A partir do conceito do índice desenvolvido por Mamlquist (1953)
##### Dados em painel 
* Índice de Malmquist (MI): Compara a mudança de produtividade de uma unidade entre dois períodos de tempo (Estática comparativa). Sendo calculado a partir de dois termos:
1. Efeito de emparelhamento (Catch-up Effect):  Nível em que uma DMU melhora ou piora sua eficiência
2. Efeito de deslocamento de fronteira (Frontier-shift Effect): relacionado à mudança da fronteira de eficiência entre os dois períodos.
**Obs: MI=(Catch-up)x(Frontier-Shift)**

### 4- Análise de Supereficiência

Por vezes os modelos clássicos (ou básicos) obtêm mais de uma DMU como eficiente **não podendo distingui-las dificultando dizer quem dentre as eficientes é a mais eficiente.** 
* Um dos caminhos para contornar essa limitação é proposto por Andersen e Petersen (1993) que apresenta a análise de supereficiência.

* Simplificando o método, a análise de supereficiência consiste na exclusão da DMU em análise do conjunto de referência, em outras palavras, a fronteira nesta aplicação é feita apenas pelos eficientes identificados nos modelos básicos com exceção da DMU de interesse. Permitindo assim que a DMU que anteriormente era apenas eficiente, obtenha um indicador individual que trás consigo o princípio de **comparatibilidade** (Os scores obtidos através da supereficiencia na maioria das vezes é maior que 1).

#### 4.1 - Correção de Cook (2009)

A correção de Cook (2009) tem por objetivo corrigir as situações de insolubilidade no cálculo do índice de supereficiência no caso deste modelo foi aplicado dado que a DMU FNSTN apresentou esse problema. 



#### _PODEMOS SABER SE VOCÊ É PRODUTIVO OU SE ESTÁ A MERCÊ DO IMPERATIVO DA PROCASTINAÇÃO CONTÍNUA. ENTÃO, CUIDADO... !_
![PRODUTIVIDADE](https://user-images.githubusercontent.com/91072668/134359384-a829125c-605d-4445-a534-917831cbb015.gif)
