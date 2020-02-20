#!/bin/sh

while true
do
    echo ""
    echo Try copy
    rsync -avpotg --exclude '*.md' /FROM_PATH/* /TO_PATH
    sleep $TIMES_PER_SECONDS
done
