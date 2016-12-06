### gost-db

GOST repository containing database initializion sql script

## Docker

Public image: [https://hub.docker.com/r/geodan/gost-db/]


# Running GOST database

```
. $ docker run -p 5432:5432 -e POSTGRES_DB=gost geodan/gost-db
```

Connect in pgadmin with localhost:5432 postgres/postgres

GOST schema is in schema postgres.v1


# Building GOST-db image

```
. $ docker build -t geodan/gost-db .

. $ docker push geodan/gost-db
```

