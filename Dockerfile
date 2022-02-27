FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get update && apt-get -y install libpq-dev

RUN pip3 install sqlalchemy

RUN pip3 install psycopg2

RUN pip3 install pyodbc
