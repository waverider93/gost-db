sudo apt-get -y install postgresql postgresql-contrib postgis
sudo su postgres -c psql << EOF
ALTER USER postgres WITH PASSWORD 'postgres';
CREATE DATABASE gost OWNER postgres;
\connect gost
CREATE EXTENSION postgis;
\q
EOF

# todo test : 
wget https://github.com/Geodan/gost-db/blob/master/gost_init_db.sql
# todo: run sql script
