library(readxl)
library(tidyverse)
base = read_excel("Base Casos.xlsx")

#Boxplot Estatura
box_estatura <- ggplot(base, aes(y = Estatura)) +
  geom_boxplot(outlier.shape = 21, fill = "lightgreen") +
  labs(title = "Box Plot Estatura",
       y = "Estatura (em metros)") +
  theme_minimal()
print(box_estatura)

# Histograma idade
hist_idade <- ggplot(base, aes(x = Idade)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribuição da Idade", x = "Idade", y = "Frequência") +
  theme_minimal()
print(hist_idade)
