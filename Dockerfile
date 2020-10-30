ARG BASE_CONTAINER=ucsdets/datascience-notebook:2020.2-stable

FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

USER root

RUN apt-get install -y aria2
RUN apt-get install -y nmap
RUN apt-get install traceroute

RUN pip install --no-cache-dir geopandas
RUN pip install --no-cache-dir babypandas

COPY /run_jupyter.sh /

USER $NB_UID

CMD ["/bin/bash"]
