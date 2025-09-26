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

hist(wine$fixed_acidity, 
     main = "Wine's Fixed Acidity", 
     xlab = "Fixed Acidity (g/L)", 
     ylab = "Number of Samples")

hist(wine$residual_sugar, 
     main = "Wine's Residual Sugar", 
     xlab = "Residual Sugar (g/L)", 
     ylab = "Number of Samples") 

hist(wine$alcohol, 
     main = "Wine's Alcohol Level", 
     xlab = "Alcohol (%)", 
     ylab = "Number of Samples")

barplot(table(wine$quality),
        main = "Wine Quality", 
        xlab = "Quality Score (between 0 - 10)", 
        ylab = "Number of Samples")

summary(wine$fixed_acidity)
summary(wine$residual_sugar)
summary(wine$alcohol)
summary(wine$quality)
