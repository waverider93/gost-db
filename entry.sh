#!/bin/bash

echo "start entry.sh"
cp /etc/postgresql/conf/postgresql.conf /var/lib/postgresql/data/postgresql.conf
echo "config copied"
pg_ctl reload
echo "config reloaded"