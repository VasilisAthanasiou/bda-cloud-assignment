#!/bin/sh
# Ensure the Appwrite directory exists
mkdir -p /usr/src/code/appwrite

# Set up Appwrite installation
if [ ! -f "/usr/src/code/appwrite/.env" ]; then
  echo "Initializing Appwrite for the first time..."
  install
fi

# Ensure Appwrite's docker-compose services are up
cd /usr/src/code/appwrite
docker compose up -d --remove-orphans --renew-anon-volumes

# Tail logs of the internal Appwrite services
cd /usr/src/code/appwrite
docker compose logs -f

# Keep container alive by tailing logs
tail -f /dev/null
