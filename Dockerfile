# syntax=docker/dockerfile:1

FROM jupyter/datascience-notebook:ubuntu-22.04
WORKDIR home/jovyan/work/
RUN conda install xarray scikit-image 
RUN git clone https://github.com/pilotchute/lasp_dsse_hw
WORKDIR lasp_dsse_hw/
#commands below this point may become ENTRYPOINT
ENTRYPOINT jupyter nbconvert --inplace --execute --to notebook DSSE_HW.ipynb
#EXPOSE 8888
