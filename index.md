---
title       : Energy Consumption Analysis
subtitle    : Course Project
author      : Anton Kulichenko
job         : Business Analytics student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      #
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Description

This Shiny App is written to provide  energy consumption information, namely:

- gas
- electricity
- water

for the years 2012 to 2014.

---
## Details

The source Excel sheet contains the figures for each of the three meters on a weekly basis.

---
## Example

Here are the first 10 lines of the Excel file:


```
##         Date PriceGas PriceElec PriceWater
## 1  01-Jan-12    55.51     22.14       2.96
## 2  08-Jan-12    57.22     23.67       3.30
## 3  15-Jan-12    62.07     23.29       3.26
## 4  22-Jan-12    56.59     23.67       3.02
## 5  29-Jan-12    63.63     23.86       3.12
## 6  05-Feb-12    83.32     24.43       4.61
## 7  12-Feb-12    83.80     25.39       5.03
## 8  19-Feb-12    59.13     23.29       5.62
## 9  26-Feb-12    54.13     21.00       5.40
## 10 04-Mar-12    40.49     21.38       3.66
```

---
## Lessons learned

- Necessary to use reactive function as soon as I have 2 inputs or more.

- In the renderPlot function the name of the dataframe must be followed by parentheses.

---
## Conclusion

- Shiny gives R a decent interactivity sufficient for everyday apps.

- Slidify rocks for creating quick nicely-looking presentations.
