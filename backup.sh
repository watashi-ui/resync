#!/bin/bash

SRC="$HOME"
DEST="user@kamratmaskin:/home/user/backups"
DATE=$(date +%Y-%m-%d)
ARCHIVE="$DEST/deleted_$DATE"

# Skapa katalog för raderade filer
ssh user@kamratmaskin "mkdir -p $ARCHIVE"

# Kör rsync med backup av raderade filer
rsync -av --delete --backup --backup-dir=$ARCHIVE $SRC $DEST/current
