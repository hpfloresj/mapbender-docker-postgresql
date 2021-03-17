#!/bin/bash

set -e
echo "INIT MAPBENDER DB"

psql=( psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --no-password )

# Create the 'template_postgis' template db
"${psql[@]}" <<- EOSQL
CREATE USER $MB_DB_USER WITH ENCRYPTED PASSWORD '$MB_DB_PASS';
GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_DB TO $MB_DB_USER;
EOSQL
