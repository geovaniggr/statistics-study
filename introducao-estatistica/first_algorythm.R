attach(aulas)

options( max.print = 40000)

sort(section_id)

aulas[33137, 3] <- 3255

sort(aulas$section_id)

aulas[33137, 3]

length(unique(aulas$section_id))

sort(table(aulas$section_id))

install.packages('plyr')

library(plyr)

auxiliar <- count(aulas, vars = "course_id")

write.csv(auxiliar, "popularidade_dos_cursos.csv")
