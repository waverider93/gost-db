sudo apt-get -y install postgresql postgresql-contrib postgis wget
wget https://raw.githubusercontent.com/Geodan/gost-db/master/gost_init_db.sql
sudo su postgres -c psql << EOF
ALTER USER postgres WITH PASSWORD 'postgres';
CREATE DATABASE gost OWNER postgres;
\connect gost
CREATE EXTENSION postgis;
\i gost_init_db.sql
\q
EOF
