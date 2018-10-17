# for Ubuntu 16.04, PostgreSQL 9.5
sudo apt-get -y install postgresql postgresql-contrib postgis wget
wget https://raw.githubusercontent.com/gost/gost-db/master/gost_init_db.sql
/etc/init.d/postgresql start
sudo su postgres -c psql << EOF
ALTER USER postgres WITH PASSWORD 'postgres';
CREATE DATABASE gost OWNER postgres;
\connect gost
\i gost_init_db.sql
\q
EOF
