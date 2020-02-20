#!/bin/sh

echo $PASSWORD > /rsync.password
chmod 600 /rsync.password

while true
do
    echo ""
    echo Try pull from rsync://$USERNAME@$SERVER:$PORT
    rsync -avzpotg --exclude '*.md' rsync://$USERNAME@$SERVER:$PORT/volume ./data --password-file=/rsync.password
    sleep $TIMES_PER_SECONDS
done
