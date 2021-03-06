## Configure enviornment

#### Install Bioconductor Packages
install.packages("BiocManager")
BiocManager::install(c(
  "phyloseq",
  "microbiome",
  "Biobase",
  "Maaslin2",
  "DirichletMultinomial",
  "MMUPHin"
  ))

#### Install CRAN Packages
install.packages(
  c(
    "ggplot2",
    "tidyverse",
    "readxl",
    "dplyr",
    "ggrepel",
    "gridExtra",
    "reshape2",
    "plyr",
    "devtools",
    "RColorBrewer",
    "ggfortify",
    "vegan",
    "MASS",
    "compositions",
    "zCompositions",
    "gplots",
    "viridis",
    "lme4",
    "phangorn",
    "plotly",
    "VennDiagram",
    "viridis",
    "foreach",
    "doParallel" ,
    "parallel",
    "ggbeeswarm",
    "FSA",
    "ggpubr",
    "ggsci",
    "ggridges",
    "future",
    "svglite",
    "cowplot",
    "coin",
    "EnvStats",
    "sjlabelled",
    "sjmisc",
    "sjPlot",
    "nlme",
    "eulerr",
    "ggthemes",
    "ggforce",
    "huge",
    "Matrix",
    "magrittr",
    "randomForest",
    "pROC",
    "plotROC",
    "SGL",
    "rstatix",
    "mlbench",
    "caret",
    "MLeval"
  )
)


#### Install Other Github available Packages
install.packages("remotes")
remotes::install_github("gmteunisse/Fantaxtic")
remotes::install_github("schuyler-smith/phyloschuyler")

# Development Version Packages
BiocManager::install(version = "devel")
BiocManager::install("curatedMetagenomicData")
BiocManager::valid()




