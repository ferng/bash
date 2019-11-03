#!/usr/bin/bash

trap "echo 'we were interrupted!!'; exit" SIGHUP SIGINT SIGTERM

echo "this script will endlessly loop until you stop it"
while true; do
    : # Do nothing
done
