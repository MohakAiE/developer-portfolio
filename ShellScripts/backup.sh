#!/bin/bash
# Author: Mohak

if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME="backup_${TIMESTAMP}.tar.gz"

tar -czf "$BACKUP_DIR/$FILENAME" -C "$(dirname "$1")" "$(basename "$1")"

if [ $? -eq 0 ]; then
    SIZE=$(du -h "$BACKUP_DIR/$FILENAME" | cut -f1)
    echo "Backup successful: $FILENAME"
    echo "Backup size: $SIZE"
    echo "$(date): SUCCESS - $FILENAME ($SIZE)" >> "$BACKUP_DIR/backup.log"
else
    echo "Backup failed."
    echo "$(date): FAILED - $FILENAME" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
