#!/bin/sh
while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  echo " waiting for Postgres Databaase Startup ($POSTGRES_HOST:$POSTGRES_PORT)..."
  sleep 2
done
echo "PostgreSQL Database started Successfully($POSTGRES_HOST:$POSTGRES_PORT)"
