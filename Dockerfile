FROM ucsdets/data-hub-base-notebook:2020.2-stable

USER root

RUN apt-get install aria2 && \
    apt-get install nmap && \
    apt-get install traceroute && \
    pip install geopandas && \
    pip install babypandas
