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

View(wine)

plot(wine$free_sulfur_dioxide, wine$total_sulfur_dioxide,
     xlab = "Free Sulfur Dioxide",
     ylab = "Total Sulfur Dioxide",
     main = "Free Vs. Total Sulfur Dioxide")

cor(wine$free_sulfur_dioxide, wine$total_sulfur_dioxide)

sulfur.lm <- lm(wine$total_sulfur_dioxide ~ wine$free_sulfur_dioxide)
summary(sulfur.lm)

abline(sulfur.lm, col = "blue")

plot(wine$alcohol, wine$density,
     xlab = "Alcohol (%)",
     ylab = "Density (g/cm^3)",
     main = "Alcohol Vs. Density")

cor(wine$density, wine$alcohol)

density.lm <- lm(wine$density ~ wine$alcohol)
summary(density.lm)

abline(density.lm, col = "blue")


