FROM postgres:12.1-alpine

COPY /scripts/init.sql /docker-entrypoint-initdb.d/1.sql
COPY /scripts/data.sql /docker-entrypoint-initdb.d/2.sql