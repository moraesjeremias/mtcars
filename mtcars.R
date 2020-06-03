setwd("/home/moraesjeremias/Documents/projects/github/users/moraesjeremias/mtcars/")
getwd()

# install.packages("ggplot2") - instalação do pacote ggplot2
library(ggplot2)

mtcars_dataset = mtcars
mtcars_dataset$names = rownames(mtcars)
print(mtcars_dataset$names)

# Somente para visualização do data frame
print(mtcars_dataset)

# Número de Instâncias - 32
print(length(mtcars$mpg))

# Número de Colunas no data frame - 11
print(length(mtcars))

# Classificações das colunas
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

# Média da massa dos carros - (3217 libras)
mean(mtcars_dataset$wt)*1000

# Média do consumo e gasolina - 20.09 milhas/galão
format(round((mean(mtcars_dataset$mpg)),2), nsmall=2)


# Bar plot com a dependência ggplot2
ggplot(data = mtcars_dataset) + 
  geom_bar(aes(x = cyl, y = reorder(names, -cyl)), stat = "identity", fill="#FF5100") + 
    ylab("Veículos") + xlab("Número de cilindros") + ggtitle("Número de Cilindros por Veículo") + theme(plot.title = element_text(hjust = 0.5))
