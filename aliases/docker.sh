#!/bin/bash

GREEN="\033[1;32m"
CYAN="\033[1;36m"
NC="\033[0m"

# List containers
function dps() {
  echo "(${GREEN}dps${NC}) ${CYAN}docker ps --format 'table {{.ID}} {{.Names}} {{.Image}} {{.Ports}} {{.Status}}'${NC}"
  docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}'
}

# Docker compose up
function cup() {
  echo "(${GREEN}cup [<service-names>]${NC}) ${CYAN}docker-compose up $@${NC}"
  docker-compose up $@
}

# Docker compose compose down and up
function recup() {
  echo "(${GREEN}recup [<service-names>]${NC}) ${CYAN}docker-compose down && docker-compose up $@${NC}"
  docker-compose down && docker-compose up $@
}

# Docker compose run tests
function crt() {
  echo "(${GREEN}cup [<service-names>]${NC}) ${CYAN}docker-compose run --rm test $@${NC}"
  docker-compose run --rm test $@
}

# Docker compose up api
function cdown() {
  echo "(${GREEN}cdown${NC}) ${CYAN}docker-compose down $@${NC}"
  docker-compose down $@
}

# Docker compose run test
function crt() {
  echo "(${GREEN}crt <test-container>${NC}) ${CYAN}docker-compose run --rm ${1:-test}${NC}"
  docker-compose run --rm ${1:-test}
}

# Docker compose run service ports
function csp() {
  echo "(${GREEN}csp <test-container>${NC}) ${CYAN}docker-compose up -d db && docker-compose run --service-ports ${1}${NC}"
  docker-compose up -d db && docker-compose run --service-ports ${1:-api}
}

# Stop and remove all containers
function dreset() {
  echo "(${GREEN}dreset${NC}) ${CYAN}docker stop $(docker ps -q) && docker rm $(docker ps -aq)${NC}"
  docker stop $(docker ps -q)
  docker rm $(docker ps -aq)
}

# Cleand dangling images
function dclean() {
  echo "(${GREEN}dclean${NC}) ${CYAN}docker rmi $(docker images -f "dangling=true" -q)${NC}"
  docker rmi $(docker images -f "dangling=true" -q)
}

# Show docker images
function dimages() {
  echo "(${GREEN}dimages${NC}) ${CYAN}docker images${NC}"
  docker images
}

# Remove docker images
function drmi() {
  echo "(${GREEN}drmi <images>${NC}) ${CYAN}docker rmi $@${NC}"
  docker rmi $@
}

# Remove docker images
function drmif() {
  echo "(${GREEN}drmif <images>${NC}) ${CYAN}docker rmi -f $@${NC}"
  docker rmi -f $@
}

# Filter containers by a given name, then tail the logs
# Example: `docker_logs client`, tails the logs within a container where the name contains "client"
function dlogs() {
  docker logs $(docker ps --filter "name=$1" -q) --tail 1 --follow
}

# Filter containers by a given name, then execute a command in that container
# Example: `docker_exec client npm test`, executes `npm test` within a container where the name contains "client"
function dex() {
  CONTAINER="$1"
  shift
  COMMAND="$@"
  docker exec -it $(docker ps --filter "name=$CONTAINER" -q) $COMMAND
}

add-tenant() {
  local NEW_TENANT=$1
  echo 127.0.0.1 $NEW_TENANT.local.imperium.markets | sudo tee -a /etc/hosts
  echo 127.0.0.1 $NEW_TENANT.api.local.imperium.markets | sudo tee -a /etc/hosts
}
