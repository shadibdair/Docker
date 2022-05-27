#!/bin/bash

# Report free disk space
df -h
# Remove all unused local volumes
docker volume prune -f
# Remove unused images
docker image prune -af
# Variable that will contain docker list.
var=$(docker container ls -aq)
# -z  Check if the value is NULL
if [ -z "$var" ];
  then echo "Null";
  else docker container rm $(docker container ls -aq);
fi
echo "done"
# Path
pwd
# Report free disk space
df -h
