library(readr)
library(tidyverse)
library(conflicted)
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

mean(wine$fixed_acidity)
median(wine$fixed_acidity)
var(wine$fixed_acidity)
sd(wine$fixed_acidity)

mean(wine$residual_sugar)
median(wine$residual_sugar)
var(wine$residual_sugar)
sd(wine$residual_sugar)

mean(wine$alcohol)
median(wine$alcohol)
var(wine$alcohol)
sd(wine$alcohol)

summary(wine$fixed_acidity)
summary(wine$residual_sugar)
summary(wine$alcohol)
