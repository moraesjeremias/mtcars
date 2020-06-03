setwd("/home/moraesjeremias/Documents/projects/github/users/moraesjeremias/mtcars/")
getwd()

# install.packages("ggplot2")
library(ggplot2)

mtcars_dataset = mtcars
mtcars_dataset$names = rownames(mtcars)
print(mtcars_dataset$names)

# Somente para visualização do data frame
print(mtcars_dataset)


print(length(mtcars$mpg))
print(length(mtcars))

print("mpg - Milhas/galão (Consumo de gasolina)")
print("cyl - Número de cilindros")
print("disp - Cilindradas")
print("hp - Cavalos")
print("drat - Relação de eixo traseiro")
print("wt - Massa do carro em libras")
print("qsec - O famoso de 0 a 100 americano")
print("vs - Motorização")
print("am - Transmissão")
print("gear - Número de marchas")
print("carb - Número de carburadores")


mean(mtcars_dataset$wt)
mean(mtcars_dataset$mpg)

# barplot(mtcars_dataset$cyl, names.arg = mtcars_dataset$names, horiz = TRUE, angle = 90,col = rainbow(32), main = "Número de Cilindradas por Veículo", xlab = "Veículos", ylab = "Número de cilindradas")

ggplot(data = mtcars_dataset) + 
  geom_bar(aes(x = cyl, y = reorder(names, -cyl)), stat = "identity", fill="#FF5100") + 
    ylab("Veículos") + xlab("Cilintradas") + ggtitle("Número de Cilindradas por Veículo") + theme(plot.title = element_text(hjust = 0.5))
