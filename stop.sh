#!/bin/bash

# Stop and remove containers
docker stop mattermost
docker rm mattermost
docker stop mm-postgres
docker rm mm-postgres

echo "Mattermost and PostgreSQL containers stopped and removed."
