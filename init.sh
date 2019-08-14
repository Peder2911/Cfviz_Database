#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<- EOSQL
   CREATE USER shiny;
   CREATE USER custodian;
   CREATE DATABASE shiny;

   GRANT ALL PRIVILEGES ON DATABASE shiny TO custodian;
   GRANT ALL PRIVILEGES ON DATABASE shiny TO shiny;
EOSQL
