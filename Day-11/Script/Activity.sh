#!/bin/bash

SCRIPT_DIR=$(dirname "$0")
SOURCE_DIR="D:/cloud1"
BACKUP_DIR="$SCRIPT_DIR/backup"
TIMESTAMP=$(date +%Y%m%d%H%M%S)

BACKUP_FILE="backup-$TIMESTAMP.tar.gz"

# Create directory if not exists
mkdir -p "$BACKUP_DIR"

# Create a compressed backup of the source directory
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"
