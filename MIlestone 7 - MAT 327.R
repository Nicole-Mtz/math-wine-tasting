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

hist(wine$density,
     xlab = "Density (g/cm^3)",
     main = "Histogram of Density")

xbar_density <- mean(wine$density)
s_density <- sd(wine$density)
n <- 598
t_density <- -qt(0.025, n-1)
xbar_density - t_density*s_density/sqrt(n)
xbar_density + t_density*s_density/sqrt(n)

hist(wine$pH,
     xlab = "pH Levels",
     main = "Histogram of pH Levels")

xbar_pH <- mean(wine$pH)
s_pH <- sd(wine$pH)
t_pH <- -qt(0.025, n-1)
xbar_pH - t_pH*s_pH/sqrt(n)
xbar_pH + t_pH*s_pH/sqrt(n)
