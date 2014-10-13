#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M")
BACKUP_DIR="/home/ **** /$TIMESTAMP"
MYSQL_USER="root"
MYSQL=/bin/mysql
MYSQL_PASSWORD=" **** "
MYSQLDUMP=/bin/mysqldump

mkdir -p $BACKUP_DIR

databases=`$MYSQL --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema)"`

for db in $databases; do
        echo $db
        $MYSQLDUMP --force --opt --user=$MYSQL_USER -p$MYSQL_PASSWORD --databases $db | gzip > "$BACKUP_DIR/$db.gz"
done