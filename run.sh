#!/bin/bash

CONFIG="./my.cnf"
if [ -f ./.my.cnf ]; then
  CONFIG="./.my.cnf"
fi

DATABASE=$(awk '/^database/ {split($0, a, "="); gsub(/^[ \t]+|[ \t]+$/, "", a[2]); print a[2]; exit}' $CONFIG)
OPTIONS="--defaults-file=$CONFIG"

echo "Using config $CONFIG and database $DATABASE."

echo "Preparing database..."
mysql $OPTIONS < ./scripts/tables.sql

echo "Importing data..."
for CSVFILE in ./data/*.csv; do
    mysqlimport $OPTIONS \
	    --columns=$(head -n 1 $CSVFILE) \
	    --ignore-lines=1 \
	    -L \
	    --fields-terminated-by=, \
	    $DATABASE \
	    $CSVFILE
done

echo "Running cleanup..."
mysql $OPTIONS < ./scripts/cleanup.sql

echo "Done."
