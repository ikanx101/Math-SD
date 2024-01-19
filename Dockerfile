# Base R image
FROM rocker/r-base

# Make a directory in the container
RUN mkdir /home

# Install R dependencies
RUN R -e "install.packages(c('dplyr', 'txtplot'))"

# Copy our R script to the container
COPY main.R /home/main.R
COPY fakto.R /home/fakto.R
COPY soal.R /home/soal.R

# Run the R script
# RUN Rscript -e "source('/home/main.R')"
