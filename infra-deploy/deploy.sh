#!/bin/bash
set -e

STACK_NAME=mystack
COMPOSE_FILE=swarm/docker-compose.yml

echo "🚀 Deploying stack: $STACK_NAME"
docker stack deploy -c $COMPOSE_FILE --with-registry-auth $STACK_NAME

echo "✅ Done. Use 'docker stack services $STACK_NAME' to check status."
