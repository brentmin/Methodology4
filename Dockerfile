ARG BASE_CONTAINER=ucsdets/datascience-notebook:2020.2-stable

FROM $BASE_CONTAINER

USER root

RUN apt-get install aria2
RUN apt-get install nmap
RUN apt-get install traceroute
RUN pip install --no-cache-dir geopandas
RUN pip install --no-cache-dir babypandas
