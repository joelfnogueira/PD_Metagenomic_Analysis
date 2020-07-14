# Metagenomic Analysis of the Parkinson's Disease Microbiome (Under Construction)
### This repository recreates the shotgun metagenomic analysis presented in : paper link

***

##### Badges will go here

## Table of Contents
1. [Background](#Background)
2. [Requirements]("#Requirements")
3. [Workflow](#Workflow)
4. [Setup/Installation](#Set-up/Installation)
5. [Metadata_Explained_Microbial_Variance](#Metadata_Explained_Microbial_Variance)
6. [Community_Composition](#Community_Composition)
7. [Multivariate_Statistical_Linear_Models](#Multivariate_Statistical_Linear_Models)
8. [Probabilistic_Graphical_Models](#Probabilistic_Graphical_Models)
9.  [Gut_Metabolic_and_Gut_Brain_Modules_GMMs_GBMs](#Gut_Metabolic_and_Gut_Brain_Modules_GMMs_GBMs)
10. [Virulence_Analysis](#Virulence_Analysis)
11. [Biomarker_Selection_and_Validation](#Biomarker_Selection_and_Validation)
12. [Feature_Specificity_for_PD](#Feature_Specificity_for_PD)

## Background
Add Abstract


## Requirements
All software used for this analysis is open source and freely available to the public. 
The majority of this analysis takes place in R-studio. Certain packages require R version >= 3.6. 
We recommend updating to __R 4.0.1. - "See Things Now"__ for this analysis.

1. Download [R](https://www.r-project.org/) 
2. Download [R-studio](https://rstudio.com/products/rstudio/download/)

In addition, the FlashWeave Probablistic Graphical Models utilze Julia, Python, JupyterNotebook, 
follow the intructions below to download the necessary packages:

1. Download [python](https://www.python.org/downloads/)
1. Download [numpy](https://numpy.org/install/)
1. Download [networkx](https://networkx.github.io/documentation/stable/install.html)
1. Download [matplotlib](https://matplotlib.org/3.2.2/users/installing.html)
2. Download [JupyterNotebook](https://jupyter.org/install)
3. Download [Julia](https://julialang.org/) (see below)

Download the binary version from https://julialang.org/downloads/. Julia 1.0 or above are currently supported by FlashWeave.

> To call julia from the command line, update your .bash_profile with the following __BUT__ replace quoted section with your own download location/version:

`PATH="/Applications/Julia-1.4.app/Contents/Resources/julia/bin/:${PATH}"
export PATH`

> This line sources your .bashrc file (also add to .bash_profile)

`if [ -f $HOME/.bashrc ]; then
    . $HOME/.bashrc
fi`

## Workflow:
Run the following analyses in the specified order. The scripts are located in the source (src) file and the outputs of will be generated in the __data/__ and __figures/__ folders.
R-scripts may be run by opening each individually in R-studio, selecting all, and using (command + enter) or by the command line by typing the following:

`Rscript name_of_rscript.R`

### Setup/Installation: 
Run: __configure.enviornment.R__ and ensure all packages load sucessfully, if any errors present themselves ensure you are using the proper version of R (4.0.1. - "See Things Now").

Run:__create_phyloseq_obj.R__ to collate data tables into phlyoseq objects that are used downstream. 

### Metadata_Explained_Microbial_Variance
This analysis sources PERMANOVA_Analysis.R which may take a few minutes to complete with permutations = 9,999. To complete in a timely manner you may reduce the number of permuations within the PERMANOVA_Analysis.R script; however, this will slightly alter some numbers downstream.

Run: __PERMANOVA_Viz.R__

### Community_Composition
Run: __Beta_Diversity.R__ & __Alpha_Diversity.R__

### Multivariate_Statistical_Linear_Models
To test for associations between our PD donors and the two controls groups we utilized [MaAsLin2](https://github.com/biobakery/Maaslin2) and employed general linear models accounting for age, sex, and bmi in one comparison between PD patients (n=48) and Healthy Population Controls (n=41), and a separate model for PD Patients and Spouse Controls (n=29 each) which accounts for the household effect. 

Data generated by this analysis is used in multiple scripts downstream. Conducting this analysis may take (6-8) hours due to the large amount of features present in the enzyme and KO datasets along with mutliple models accounting for stratification. If you are only interested in analysis of taxa, comment-out the undesired models in the script prior to analysis. This will drastically reduce the required time

Run the following scripts:

__MaAsLin2_Analysis.R__

To vizualize data generated from these models run the following scripts:

Recreates Figure 2:
__Differential_Abundance_Viz_Taxa_Figure_2.R__

Requires some manual input: To vizualize a particular dataset of interest - replace name of Robj in section of script titled (asdf) (see table above) (NOTE TO SELF: May be best to run this analysis with command line input & instruct users to input a tag that fills in Robj.
__Differential_Abundance_Viz_Functional.R__ 

### Probabilistic_Graphical_Models
This analysis requires multiple platforms, run the following script in R to prep the necessary input tables for 
[FlashWeave](#https://github.com/meringlab/FlashWeave.jl.git) as well as for merging data downstream with metadata. 

__FlashWeave_input_prep.R__

(WARNING: This analysis may take up to (3-4) hours)
Next, open a terminal console and navigate to the directory with this repository. Run the FlashWeave Analysis with the following line:

`julia correlation_analysis.jl`

To build the interactive network open Jupyter Notebook (type `Jupter Notebook` in terminal console). Go to the __Help__ Tab and select : __Launch Classic Notebook__. Navigate to D3.js_Network_viz.ipynb file and enter (Cell -> Run All)

### Gut_Metabolic_and_Gut_Brain_Modules_GMMs_GBMs
(On-going)
### Virulence_Analysis
(On-going)
### Biomarker_Selection_and_Validation
(On-going)
### Feature_Specificity_for_PD
(On-going)

## Acknowledgements


## License
A short snippet describing the license (MIT, Apache etc)
MIT License 2020 jboktor

Any questions contact: jboktor@caltech.edu
