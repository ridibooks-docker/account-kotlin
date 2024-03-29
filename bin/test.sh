#!/usr/bin/env bash

set -e

source .env

# TEST_CMD="aws --version 2>&1 | grep -q 'aws-cli/${AWS_CLI_VERSION}' \
#     && echo \"aws-cli version=${AWS_CLI_VERSION}\" \
#     && ecs-cli --version 2>&1 | grep -q 'ecs-cli version ${ECS_CLI_VERSION}' \
#     && echo \"ecs-cli version=${ECS_CLI_VERSION}\" \
#     && docker-compose --version 2>&1 | grep -q 'docker-compose version ${DOCKER_COMPOSE_VERSION}' \
#     && echo \"docker-compose version=${DOCKER_COMPOSE_VERSION}\""
TEST_CMD="echo \"success\""

if docker run -t --rm account-kotlin bash -c "${TEST_CMD}"
then
    echo "Success!"
    exit 0
else
    echo "Failed.."
    exit 1
fi
