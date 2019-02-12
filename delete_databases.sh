#!/bin/bash
# * propagate signal
set -e

DB_STARTS_WITH=$DB_NAME_PREFIX
HOST=$DB_HOST
PORT=$DB_PORT      
MUSER=$DB_USERNAME
MPWD=$DB_PASSWORD

echo "* Start to connect to backend server..."
DBS="$(mysql -u$MUSER -p$MPWD -h$HOST -P$PORT -Bse 'SHOW DATABASES')"

echo "* Success to get list of databases name!!!"
for db in $DBS; do
echo "* '$db' is exist."
if [[ "$db" =~ "^${DB_STARTS_WITH}" ]]; then
    echo "* '$db' will be deleted!!!"
    mysql -u$MUSER -p$MPWD -Bse "DROP DATABASE $db"
fi
done
