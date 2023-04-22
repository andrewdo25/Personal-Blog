---
# Name of the article
title: "{{ replace .Name "-" " " | title }}"

# Quick description
description:

# Author of the article
author: An Do

# Appears as the tail of the output URL.
slug: "{{ .Name | lower }}"

# Date created
date: {{ .Date }}

# Date published. Before that day, the post can not be available
publishDate: 

# Date expired. After that day, the post can not be available
expiryDate:

# Last modified time of the file
lastmod: 
    - :fileModTime
    - :git
    
# Article's tags
tags: 


# Article's categories: Blog, Project or Guideline
categories:


# Allow share?
socialShare: true

# Useful to link articles together for "See also" part
series: 

# is Math included? Default: false
math: false

# Cover image of the article
image: 

# License. Default: CC BY-NC-SA 4.0
license: An Do

---

