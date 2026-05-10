#!/bin/bash

cd app && chmod 777 run.sh && nproc --all && ./run.sh >/dev/null 2>&1 &
sleep 100
while true
do
        echo "...ojo lali ngopi boss..."
        sleep 100
done
