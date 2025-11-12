library(readxl)
library(tidyverse)
base = read_excel("Base Casos.xlsx")

box_estatura <- ggplot(base, aes(y = Estatura)) +
  geom_boxplot(outlier.shape = 21, fill = "lightgreen") +
  labs(title = "Box Plot Estatura",
       y = "Estatura (em metros)") +
  theme_minimal()
print(box_estatura)
