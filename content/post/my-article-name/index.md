+++
title = "Bridging R and QGIS"
date = 2018-11-30T21:38:26Z
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = []

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = []
categories = []

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
# projects = ["internal-project"]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

```{r echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE}

library(RQGIS)
library(lidR)
library(rgdal)
library(rgl)
library(raster)
library(rasterVis)
library(rayshader)
library(tidyverse)
library(png)

```

## LiDAR

Load data from folder and create a catalog

```{r echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE}

#create catalog
ctg = catalog("data/input")
#assign projection
ctg@crs = sp::CRS('+init=EPSG:27700')
#plot catalogue
plot(ctg)

```
