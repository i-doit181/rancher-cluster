#!/bin/bash

type=$1
driver_to_delete=$2

if [[ $type = "docker" ]];
 then
  ./docker-machine/destroy-machines.sh $driver_to_delete
 elif [[ $type = "vagrant" ]];
  then
   echo "todo"
 else
  echo "error: you must give the driver the machines are provided with"
fi