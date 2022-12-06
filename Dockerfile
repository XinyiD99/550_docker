FROM rocker/r-ubuntu

RUN Rscript -e "install.packages('here')"
RUN Rscript -e "install.packages('rmarkdown')"
RUN Rscript -e "install.packages('table1')"
RUN Rscript -e "install.packages('ggplot2')"
RUN Rscript -e "install.packages('labelled')"
RUN Rscript -e "install.packages('gtsummary')"
RUN Rscript -e "install.packages('knitr')"


RUN apt-get update && apt-get install -y pandoc

RUN mkdir /project
WORKDIR /project

ENV WHICH_CONFIG "default"

RUN mkdir code
RUN mkdir clean_data
RUN mkdir model

COPY clean_data clean_data
COPY report.Rmd .
COPY code code
COPY Makefile Makefile

# create mounting folder
RUN mkdir report

# add entry point 
CMD make && mv report.html report