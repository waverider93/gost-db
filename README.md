# GOST-DB

GOST repository containing database initialization sql script, shell install script and some Docker commands.

GOST schema is by default in schema gost.v1

Testcase: Connect in pgadmin with localhost:5432 postgres/postgres, GOST database should be in gost.v1

### SQL script

Run https://github.com/gost/gost-db/blob/master/gost_init_db.sql sql script in a new GOST database,
default user/password: postgres/postgres

### Shell script - for installation without Docker

Run (gost-db-install.sh) to installl PostgreSQL + PostGIS + GOST database from terminal.

```
$ wget https://raw.githubusercontent.com/Geodan/gost-db/master/gost-db-install.sh
$ sh gost-db-install.sh
```

### Docker

Public image: [https://hub.docker.com/r/geodan/gost-db/]

Public image Raspberry Pi: [https://hub.docker.com/r/geodan/rpi-gost-db/]

### Running GOST database

```
$ docker run -p 5432:5432 -e POSTGRES_DB=gost geodan/gost-db
```

### Running GOST database on Raspberry Pi

```
$ docker run -p 5432:5432 -e POSTGRES_DB=gost geodan/rpi-gost-db
```


### Building gost-db image

```
$ docker build -t geodan/gost-db .
$ docker push geodan/gost-db
```

### Building rpi-gost-db image for Raspberry Pi

```
$ docker build -f Dockerfile-rpi -t geodan/rpi-gost-db .
$ docker push geodan/rpi-gost-db
```

## Database tuning

The database is tuned in the postgresql.conf files, changes:

shared_buffers -> 512MB (from 128MB)

work_mem -> 16MB (from 1 MB)

synchronous_commit -> off (from 'on')
 
wal_buffers -> 16MB (from ?)

wal_writer_delay -> 1000ms (from 200 ms)

checkpoint_timeout -> 15min (from 5min)


