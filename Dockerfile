FROM mdillon/postgis:9.6-alpine
ADD gost_init_db.sql /docker-entrypoint-initdb.d/
