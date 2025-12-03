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

mean(wine$alcohol)
sd(wine$alcohol)

(10.44211-11.6)/(1.082196/sqrt(1143))
qnorm(0.05)

mean(wine$pH)
sd(wine$pH)

(3.311015-3.5)/(0.1566641/sqrt(1143))
qnorm(0.05)
