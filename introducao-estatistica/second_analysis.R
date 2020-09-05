duracao <- rename(duracao, replace = c("user_id" = "aluno", "course_id" = "curso", "timeToFinish"="dias"))

plot(duracao$dias)

# Criando um Gráfico 

jpeg("histograma.jpg")

# temos tabem pdf()  e png() 

hist(
  duracao$dias, 
     breaks = 20,
     col = "red",
     ylab = "Quantidade",
     xlab = "Tempo",
     ylim = c(0, 2000),
     main = "Frequência do Curso")

dev.off()


# calculando a média

mean(duracao$dias, na.rm = T)

# calculando a mediana

median(duracao$dias, na.rm = T)

summary(duracao$dias)

quantidade_de_curso <- dim(duracao)[1]

proporcao_missing_data <- 3828 / quantidade_de_curso

length(unique(duracao$curso))

length(unique(duracao$aluno))


# 484 alunos, 264 cursos, 60% dos curso não completos

