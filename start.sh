#!/bin/bash

# Run PostgreSQL container with volume
docker run --name mm-postgres -e POSTGRES_USER=mmuser -e POSTGRES_PASSWORD=mmuser_password -e POSTGRES_DB=mattermost --network=mm-network -v mm-postgres-data:/var/lib/postgresql/data -d postgres:13

# Run Mattermost container linked to PostgreSQL with volumes
docker run --name mattermost --network=mm-network -e MM_SQLSETTINGS_DATASOURCE="postgres://mmuser:mmuser_password@mm-postgres:5432/mattermost?sslmode=disable" -v mm-config:/mattermost/config -v mm-data:/mattermost/data -v mm-logs:/mattermost/logs -v mm-plugins:/mattermost/plugins -v mm-client-plugins:/mattermost/client/plugins -d --publish 8065:8065 mattermost/mattermost-team-edition

echo "Mattermost should now be running on http://localhost:8065/"
