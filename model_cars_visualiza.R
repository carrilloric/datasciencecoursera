# Script: analisis.R
# Autor: rcarrillo
# Fecha: 2025-01-16

# Cargar librerías
library(ggplot2)

# Cargar datos
data(mtcars)

# Análisis
modelo <- lm(mpg ~ wt + hp, data = mtcars)
summary(modelo)

# Visualización
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") +
  theme_minimal()

# Guardar resultados
saveRDS(modelo, "resultados/modelo.rds")