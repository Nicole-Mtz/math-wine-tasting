library(readr)
library(tidyverse)
library(conflicted)
library(ggpubr)
wine <- read_csv("https://raw.githubusercontent.com/Nicole-Mtz/math-wine-tasting/refs/heads/main/WineQT.csv")

wine <- wine %>% 
  rename(
    fixed_acidity = `fixed acidity`,
    volatile_acidity = `volatile acidity`,
    citric_acid = `citric acid`,
    residual_sugar = `residual sugar`,
    free_sulfur_dioxide = `free sulfur dioxide`,
    total_sulfur_dioxide = `total sulfur dioxide`
  )

density.lm <- lm(density ~ sulphates + residual_sugar + alcohol, data = wine)

summary(density.lm)
summary(density.lm)$r.squared
summary(density.lm)$coefficients[,4]

hist(resid(density.lm),
     xlab = "Residuals of Independent Variables",
     main = "Histogram of Residuals")

plot(wine$density,resid(density.lm),
     xlab = "Density (g/cm^3)",
     ylab = "Residuals",
     main = "Scatterplot of Residuals")
