clean_data/cleaned.rds: code/01_data_clean.R
	Rscript code/01_data_clean.R

model/model_CHD.rds model/model_non_CHD.rds: code/02_model.R clean_data/cleaned.rds
	Rscript code/02_model.R

report.html: report.Rmd code/03_render_report.R clean_data/cleaned.rds model/model_CHD.rds model/model_non_CHD.rds
	Rscript code/03_render_report.R

PROJECTFILE= report.Rmd code/03_render_report.R clean_data/cleaned.rds model/model_CHD.rds model/model_non_CHD.rds

##image
project_image:
	docker build -t xdan999/project_image .

# run the container
report/report.html:
	docker run -v "/$$(pwd)/report":/project/report xdan999/project_image