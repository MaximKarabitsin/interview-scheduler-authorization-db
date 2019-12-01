FROM postgres:12.1-alpine

COPY /scripts/init.sql /docker-entrypoint-initdb.d/