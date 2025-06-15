#!/bin/bash
# safe-deploy.sh

STACK_NAME=mystack
COMPOSE_FILE=swarm/docker-compose.yml

echo "🧼 Removing old stack (if any)..."
docker stack rm $STACK_NAME
echo "⏳ Waiting for old stack to be removed..."
sleep 10

# Optional: check if services are gone
while docker service ls | grep -q "${STACK_NAME}_"; do
  echo "⏳ Waiting for services to terminate..."
  sleep 5
done

echo "🚀 Deploying new stack..."
docker stack deploy -c $COMPOSE_FILE --with-registry-auth $STACK_NAME
echo "✅ Done."
