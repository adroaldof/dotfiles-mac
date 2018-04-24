#!/bin/bash


# List containers
function dps () {
  docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}'
}


# Docker compose up api
function cup () {
  docker-compose up ${1:-api}
}


# Docker compose up api
function cdown () {
  docker-compose down
}


# Docker compose run test
function crt () {
  docker-compose run --rm ${1:-test}
}


# Stop and remove all containers
function dreset () {
  docker stop $(docker ps -q)
  docker rm $(docker ps -aq)
}


# Cleand dangling images
function dclean () {
  docker rmi $(docker images -f "dangling=true" -q)
}


# Show docker images
function dimages () {
  docker images
}


# Filter containers by a given name, then tail the logs
# Example: `docker_logs client`, tails the logs within a container where the name contains "client"
function dlogs () {
  docker logs $(docker ps --filter "name=$1" -q) --tail 1 --follow
}


# Filter containers by a given name, then execute a command in that container
# Example: `docker_exec client npm test`, executes `npm test` within a container where the name contains "client"
function dex () {
  CONTAINER="$1"; shift; COMMAND="$@"
  docker exec -it $(docker ps --filter "name=$CONTAINER" -q) $COMMAND
}

