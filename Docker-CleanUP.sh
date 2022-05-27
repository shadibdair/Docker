#!/bin/bash

# Report free disk space
df -h
# Remove all unused local volumes
docker volume prune -f
