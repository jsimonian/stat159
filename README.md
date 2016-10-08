# Stat 159 - Homework 2

- [Author](#author)
- [Project Structure](#project-structure)
- [Contents](#contents)
- [Usage](#usage)


### Author: Joseph Simonian

### Project Structure:

```
project
│
│   .gitignore
|   LICENSE
│   README.md
│   Makefile
└───data
│   │   README.md
│   │   Advertising.csv
│   │   eda-output.txt
│   │   regression.RData
│
└───code
│   │   README.md
│   │   eda-script.R
│   │   regression-scropt.R
│   
└───images
│   │   histogram-sales.png
│   │   histogram-sales.pdf
│   │   histogram-tv.png
│   │   histogram-tv.pdf
│   │   scatterplot-tv-sales.png
│   │   scatterplot-tv-sales.pdf
│
└───report
    │   report.Rmd
    │   report.pdf
```

### Contents:

- `/code`: Code used in the generation of all histograms, plots, and regression data.

- `/images`: Histograms and scatterplots used in the report, in both `.pdf` and `.png` formats.

- `/data`: The original data (Advertising.csv), as well as summary statistics on the `TV` and `Sales` columns and regression data.

- `/report`: The main report, in `.Rmd`, `.pdf`, and `.html` formats.

### Usage:

To generate the pdf output of this homework, simply clone the repository and run `make all`.
