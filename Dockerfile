# Base R image
FROM rocker/r-base

# Make a directory in the container
RUN mkdir /hemat

# Install R dependencies
RUN R -e "install.packages(c('dplyr', 'txtplot'))"

# Copy our R script to the container
#COPY main.R /home/main.R
#COPY fakto.R /home/fakto.R
#COPY soal.R /home/soal.R
COPY mt.R /hemat/tes.R
COPY text.txt /hemat/text.txt

# Run the R script
# RUN Rscript -e "source('tes.R')"
