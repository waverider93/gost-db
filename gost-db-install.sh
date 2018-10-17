# for Ubuntu 16.04, PostgreSQL 9.5
sudo apt-get -y install postgresql postgresql-contrib postgis wget
/etc/init.d/postgresql start
sudo su postgres -c psql << EOF
ALTER USER postgres WITH PASSWORD 'postgres';
CREATE DATABASE gost OWNER postgres;
\connect gost
CREATE EXTENSION postgis;
\i gost_init_db.sql
\q
EOF