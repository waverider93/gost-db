FROM mdillon/postgis
ADD gost_init_db.sql /docker-entrypoint-initdb.d/