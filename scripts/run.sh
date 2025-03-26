#!/usr/bin/env bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Source the .env file
if [ -f "${SCRIPT_DIR}/../.env" ]; then
  export $(grep -v '^#' "${SCRIPT_DIR}/../.env" | xargs)
fi

docker network create "${NETWORK_NAME}" || true

docker stop "${NAME}" || true

  
# -v "${SCRIPT_DIR}/../data/production.yaml:/qdrant/config/production.yaml" \
docker run -it --rm -d \
  --name "${NAME}" \
  --network mq_network \
  -p 6333:6333 \
  --env-file "${SCRIPT_DIR}/../.env" \
  -v "${SCRIPT_DIR}/../data/storage:/qdrant/storage" \
  -v "${SCRIPT_DIR}/../data/snapshots:/qdrant/snapshots" \
  "${IMAGE_TAG}" \