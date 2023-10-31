#!/bin/bash

# Create Docker network
docker network create mm-network

# Create Docker volumes
docker volume create mm-postgres-data
docker volume create mm-config
docker volume create mm-data
docker volume create mm-logs
docker volume create mm-plugins
docker volume create mm-client-plugins

# Pull Docker images
docker pull postgres:13
docker pull mattermost/mattermost-team-edition

echo "Installation complete. You can now start Mattermost with the start script."

