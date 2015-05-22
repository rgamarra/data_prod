Analysis of violent crime rates by US States
========================================================
author: John Doe
date: May, 2015

The information and analysis
========================================================

The analyzed dataset includes information in arrests for assault, murder, and rape in each of the 50 US states in 1973, along with the percent of the population living in urban areas.

It comprises 50 observations on the following variables Murder, Assault and Rape arrests (per 100k) and % of urban population.

We plot each assault variable against % of urban population.

see also https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/USArrests.html

Urban % versus Murder, Rape and Assault
========================================================

![plot of chunk unnamed-chunk-1](presentation-figure/unnamed-chunk-1-1.png) 

- The red line is a linear regression.

Correlation between variables.
========================================================

- The correlation between Urban % and Murder is

```
[1] 0.06957262
```
- The correlation between Urban % and Assault is

```
[1] 0.2588717
```
- The correlation between Urban % and Rape is

```
[1] 0.4113412
```
Conclusions
========================================================

- The slopes seen in the linear regressions are consistent with the correlation.
- The impact of Urban % on Murder seems to be negligible.
- The most significant impact is on Rape, with a low correlation value anyway.

