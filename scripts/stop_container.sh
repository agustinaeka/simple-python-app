#!/bin/bash
set -e

# Stop the running container (if any)
containerID=$(docker ps -q --filter ancestor=ekaagustina/simple-python-flask-app)

if [ ! -z "$containerID" ]; then
  docker rm -f $containerID
  echo "Container $containerID has been stopped and removed."
else
  echo "No running container found."
fi

