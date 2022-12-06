
------------------------------------------------------------------------

## Initial code description

`code/01_data_clean.R`

  - read in the CHD dataset.
  - saves the CHD data as `cleaned.rds` object in `clean_data/` folder

`code/02_model.R`

  - read in the CHD cleaned dataset.
  - generate linear models with SBP regressed on tobacco, ldl, adiposity, obesity, alcohol, age, by CHD petients and non-CHD participants.
  - save the models as `.rds` objects.
  
`code/03_render_report.R`

  - renders `report.Rmd`

`report.Rmd`

  - reads cleaned data and models generated by `code/01_data_clean.R` and `code/02_model.R`
  - makes the tables and scatterplots
  
`Makefile`

  - makefile to generate the data, models and reports.
  
  
## Data description

The data is directed downloaded form Kaggle in code/01_data_clean.r and saved in cleaned data. Please refer to cleaned.rds for the data. 

The dataset includes 462 observations in terms of 10 variables, mainly medical data relating to medical data and cardiovascular disease, including systolic blood pressure (SBP), cumulative tobacco consumption, family history of heart disease, adiposity and overweight, age and coronary heart disease.

## Generate Report

  - execute `make install` to load required packages.
  - execute `make report.html` to generate the report.



------------------------------------------------------------------------
