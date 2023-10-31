# Mattermost Docker Deployment Scripts

This repository contains shell scripts for installing, starting, and stopping a Mattermost instance along with a PostgreSQL database using Docker. The scripts are designed to run on macOS.

## Scripts

- `install_mattermost.sh`: Installs the necessary Docker images and sets up Docker volumes and network for Mattermost and PostgreSQL.
- `start_mattermost.sh`: Starts the Mattermost and PostgreSQL containers.
- `stop_mattermost.sh`: Stops and removes the Mattermost and PostgreSQL containers.

## Prerequisites

- Docker must be installed. If it's not, the install script will attempt to install it using Homebrew.

## How to Use

1. **Clone the Repository**: Clone this repository to your local machine.

    ```bash
    git clone <repository_url>
    ```

2. **Navigate to the Directory**: Change directory into the folder where the scripts are located.

    ```bash
    cd <directory_name>
    ```

3. **Make Scripts Executable**: Run the following commands to make the scripts executable.

    ```bash
    chmod +x install_mattermost.sh
    chmod +x start_mattermost.sh
    chmod +x stop_mattermost.sh
    ```

4. **Install**: Run the install script to set up the Docker environment.

    ```bash
    ./install_mattermost.sh
    ```

5. **Start**: Run the start script to launch Mattermost and PostgreSQL containers.

    ```bash
    ./start_mattermost.sh
    ```

    After running this script, Mattermost should be accessible at `http://localhost:8065/`.

6. **Stop**: Run the stop script to stop and remove the Mattermost and PostgreSQL containers.

    ```bash
    ./stop_mattermost.sh
    ```

## Data Persistence

The scripts use Docker volumes to persist data for both Mattermost and PostgreSQL. Even if you stop and remove the containers, your data will remain intact and will be available the next time you start the containers.
