#!/bin/bash
set -euo pipefail

BACKUP_DIR="$HOME/cloudnova/backups"
DATE=$(date +%F_%H-%M)
FILE="$BACKUP_DIR/db_backup_$DATE.sql.gz"

mkdir -p "$BACKUP_DIR"

# Dump the database from inside the db container (it already has the passwords)
docker exec wp_db sh -c 'mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE"' | gzip > "$FILE"

# Delete backups older than 7 days
find "$BACKUP_DIR" -name "db_backup_*.sql.gz" -mtime +7 -delete

echo "[$(date)] Backup completed: $FILE"
