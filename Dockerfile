FROM postgres:14
USER root
RUN apt-get update \
    && apt-get install -y python3 python3-pip postgresql-plpython3-14 \
    && pip3 install bahttext
USER postgres
COPY scripts/init.sql /docker-entrypoint-initdb.d/