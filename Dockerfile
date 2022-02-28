FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get update && apt-get -y install libpq-dev

RUN pip3 install sqlalchemy

RUN pip3 install psycopg2

RUN pip3 install pyodbc

RUN pip3 install pymssql

RUN pip3 install pymysql

RUN apt-get install -y openjdk-17-jdk

RUN export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

RUN export PATH=$PATH:$JAVA_HOME/bin

RUN curl -L -O https://repo1.maven.org/maven2/net/sourceforge/jtds/jtds/1.3.1/jtds-1.3.1.jar

RUN pip3 install JayDeBeApi
