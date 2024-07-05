#!/bin/bash

if [ $1 == '-u' ]
then
   docker-compose -f .docker/docker-compose.dev.yml up -d --remove-orphans
elif [ $1 == '-d' ]
then
   docker-compose -f .docker/docker-compose.dev.yml down
elif [ $1 == '-b' ]
then
  # $2 is any flag. Example: --no-cache
  docker-compose -f .docker/docker-compose.dev.yml build $2
fi
