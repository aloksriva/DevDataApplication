---
title       : Fuel Efficiency Prediction Application
subtitle    : Context, Benefits and Model
author      : Alok Srivastava
job         : Budding Data Scientist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : mathjax            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Application Context
Fuel efficiency (FE: measured in miles per gallon - mpg) of cars has traditionally been a key parameter impacting buying decision. 

A car's FE depends on multiple factors, transmission type, weight, engine's displacement (cubic inches), number of cylinders & carburetors, throughput (horse power) to name a few.

Understanding the relationship between car's fuel efficiency and the factors mentioned above, specifically with transmission type, will enablecar buyers willing to compromise on reduced fuel efficiency if any, while focusing on driving comfort/ease in form of automatic transmission.

---

## Benefit
Helps users with:

1. Predicting Fuel Efficiency depending on engine's horse power
2. Comparing Automatic with Manual versions of same car
3. Decision Making capability during buying research

---

## Application Summary
Inputs

1. Transmission Type: Automatic OR Manual
2. Engine's Gross Horse Power (hp)

Output: Miles Per Galon (mpg)

--- 

## Application's Engine - Regression Model
FE = b$0$ + b$1$*am + b$2$*log$10$(hp) + e


```
## 
## Call:
## lm(formula = mpg ~ I(log10(hp)) + am, data = mtcars)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -3.908 -1.769 -0.143  1.403  6.387 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept)    63.484      5.270   12.05  8.2e-13 ***
## I(log10(hp))  -21.272      2.404   -8.85  9.8e-10 ***
## am              4.202      0.994    4.23  0.00022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.59 on 29 degrees of freedom
## Multiple R-squared:  0.827,	Adjusted R-squared:  0.815 
## F-statistic: 69.3 on 2 and 29 DF,  p-value: 8.95e-12
```

---


## Fitted Model's Interpretation
Fitted Regression Model suggests  a significant relation between fuel efficiency and transmission type. Other variable (gross horsepower) remaining constant, a manual transmission returns an additional 4.202 mpg over its automatic counterpart.
This analysis also identifies a significant negative non-linear (logrithmic) relationship between gross horse power and fuel efficiency.
