#!/bin/bash

druid_user=${DRUID_METADATA_USER:-druid}
druid_password=${DRUID_METADATA_PASSWORD:-druid}
druid_database=${DRUID_METADATA_DATABASE:-druid}

psql -U $POSTGRES_USER -c "CREATE USER $druid_user WITH ENCRYPTED PASSWORD '$druid_password';" 
psql -U $POSTGRES_USER -c "CREATE DATABASE $druid_database;" 
psql -U $POSTGRES_USER -c "GRANT ALL PRIVILEGES ON DATABASE $druid_database to $druid_user;" 
