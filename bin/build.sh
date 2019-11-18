#!/usr/bin/env bash

set -e

source .env

DOCKER_TAG=${1}

function print_usage
{
    echo
    echo "Usage: build.sh <DOCKER_TAG>"
    echo
    echo "Example:"
    echo "  build.sh latest"
}

if [[ -z "${DOCKER_TAG}" ]]
then
    echo "No DOCKER_TAG specified."
    print_usage
    exit 1
fi

echo "=> Building start with args"

echo "Build a image - account-kotlin:${DOCKER_TAG}"
docker build --pull \
  -t "account-kotlin:${DOCKER_TAG}" .
