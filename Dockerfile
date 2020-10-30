FROM ucsdets/data-hub-base-notebook

USER root

RUN apt-get install aria2
RUN apt-get install nmap
RUN apt-get install traceroute
RUN pip install geopandas
RUN pip install babypandas
