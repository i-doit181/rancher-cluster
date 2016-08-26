#!/bin/bash

driver_to_delete=$1

if [[ -n $driver_to_delete ]];
 then
  docker-machine rm $(docker-machine ls --format "{{.Name}}" --filter driver=$driver_to_delete)
 else
  docker-machine rm $(docker-machine ls --format "{{.Name}}")
fi