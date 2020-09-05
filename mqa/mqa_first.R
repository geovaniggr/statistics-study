# funcoes auxiliares

limite_inferior <- function(primeiro_quartil, terceiro_quartil){
  primeiro_quartil - 1.5 * (terceiro_quartil - primeiro_quartil)
}

limite_superior <- function(primeiro_quartil, terceiro_quartil){
  terceiro_quartil + 1.5 * ( terceiro_quartil - primeiro_quartil)
}

my_mode <- function(elements) {
  ux <- unique(elements)
  ux[which.max(tabulate(match(elements, ux)))]
}

my_cv <- function(desvio_padrao, variancia){
  100 * desvio_padrao / variancia
}

# 1. Classificando as variáveis:

#  Ordem : Qualitativa Ordinal
#  Local : Qualitativa Nominal
#  PAP : Qualitativa Ordinal
#  Instrução ( chefe da casa ) : Qualitativa Ordinal
#  Tamanho da Familia : Quantitativa Discreta
#  Renda : Quantitativa Contínua

# 2. Calcule a média, mediana e moda da variável **tamanho familia**, comente:

# ->  Média

mean(Pesquisa_em_Florianopolis$tamanho)

# -> Mediana

median(Pesquisa_em_Florianopolis$tamanho)

# -> Moda

my_mode(Pesquisa_em_Florianopolis$tamanho)

# 3. Calcule a variância, desvio-padrão e o coeficiente da variação da variável **tamanho da família**

# -> Variância

var(Pesquisa_em_Florianopolis$tamanho)

# -> Desvio Padrão

sd(Pesquisa_em_Florianopolis$tamanho)

# -> Coêficiente de Variação

my_cv(
  sd(Pesquisa_em_Florianopolis$tamanho),
  var(Pesquisa_em_Florianopolis$tamanho)
)

# Represente os dados da variável **renda**, separada por **local** através da representação box-plot

library(dplyr)

populacao_local1 <- filter(Pesquisa_em_Florianopolis, Pesquisa_em_Florianopolis$local == 1)

populacao_local2 <- filter(Pesquisa_em_Florianopolis, Pesquisa_em_Florianopolis$local == 2)

populacao_local3 <- filter(Pesquisa_em_Florianopolis, Pesquisa_em_Florianopolis$local == 3)


########################################################################################################################

# Quartis

primeiro_quartil_local1 <- quantile(populacao_local1$renda, 0.25, names = FALSE )
segundo_quartil_local1 <- quantile(populacao_local1$renda, 0.5, names = FALSE)
terceiro_quartil_local1 <- quantile(populacao_local1$renda, 0.75, names = FALSE)

# Minimo
min(populacao_local1$renda)

# Maximo
max(populacao_local1$renda)

# Limite Inferior

limite_inferior(primeiro_quartil_local1, terceiro_quartil_local1)
limite_superior(primeiro_quartil_local1, terceiro_quartil_local1)

## Outliers: 18.6 e 19.3

########################################################################################################################

## Local 2

# Quartis

primeiro_quartil_local2 <- quantile(populacao_local2$renda, 0.25, names = FALSE)
segundo_quartil_local2 <- quantile(populacao_local2$renda, 0.5, names = FALSE)
terceiro_quartil_local2 <- quantile(populacao_local2$renda, 0.75, names = FALSE)

# Minimo

min(populacao_local2$renda)

# Maximo
max(populacao_local2$renda)

# Limite Inferior

limite_inferior(primeiro_quartil_local2, terceiro_quartil_local2)
limite_superior(primeiro_quartil_local2, terceiro_quartil_local2)

# Outliers: 10.2, 10.8, 11.3, 14.0

########################################################################################################################

## Local 3


# Quartis

primeiro_quartil_local3 <- quantile(populacao_local3$renda, 0.25, names = FALSE )
segundo_quartil_local3 <- quantile(populacao_local3$renda, 0.5, names = FALSE)
terceiro_quartil_local3 <- quantile(populacao_local3$renda, 0.75, names = FALSE)

# Minimo

min(populacao_local3$renda)

# Maximo
max(populacao_local3$renda)

# Limite Inferior

limite_inferior(primeiro_quartil_local3, terceiro_quartil_local3)
limite_superior(primeiro_quartil_local3, terceiro_quartil_local3)

#Outliers: 11.1, 11.4, 13.9, 25.7

########################################################################################################################


# Classifique as variáveis.
# Calcule média, mediana e moda da variável tamanho da família. Comente.
# Calcule variância, desvio-padrão e coeficiente de variação da variável tamanho da família. Comente.
# Represente os dados da variável renda, separada por local, através da representação gráfica “box-plot”, apresentando os valores dos quartis, mínimo, máximo, limite inferior e limite superior de cada box-plot.
# Há outliers? Justifique sua resposta.


summary(populacao_local1$renda, quantile.type = 6)
summary(populacao_local3$renda)

# Representação Boxplot

boxplot(
  populacao_local1$renda,
  populacao_local2$renda,
  populacao_local3$renda
  )

boxplot(populacao_local1$renda)
