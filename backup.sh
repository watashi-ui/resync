


#!/bin/bash

SRC="$HOME"
DEST="testuser@localhost:/home/testuser/backups"
DATE=$(date +%Y-%m-%d)
ARCHIVE="$DEST/deleted_$DATE"

# Skapa kataloger på backupmaskinen
ssh testuser@localhost "mkdir -p /home/testuser/backups/current"
ssh testuser@localhost "mkdir -p $ARCHIVE"

# Kör rsync med backup av raderade filer
rsync -av --delete --backup --backup-dir=$ARCHIVE $SRC $DEST/current














