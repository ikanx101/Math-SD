# Base R image
FROM rocker/r-ver

# Make a directory in the container
RUN mkdir /home/r-environment

# Install R dependencies
RUN R -e "install.packages(c('dplyr', 'txtplot'))"

# Copy our R script to the container
COPY main.R /home/r-environment/main.R
COPY fakto.R /home/r-environment/fakto.R
COPY soal.R /home/r-environment/soal.R

# Run the R script
RUN Rscript -e "source('/home/r-environment/main.R'); mulai()"
