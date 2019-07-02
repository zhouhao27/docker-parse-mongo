#!/bin/bash
export $(grep -v '^#' ./config/env | xargs -0)

if [ $1 == "stop" ]; then
  echo 'stopping...'
  docker-compose down
elif [ $1 == "start" ]; then
  echo 'starting...'
  docker-compose up -d 
elif [ $1 == "build" ]; then
  echo 'building...'
  docker-compose build
fi