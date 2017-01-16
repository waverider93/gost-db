FROM mdillon/postgis:9.5
ADD gost_init_db.sql /docker-entrypoint-initdb.d/
