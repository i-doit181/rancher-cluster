#!/bin/bash

amount_machine=$1
master_type=$2

if [[ $master_type = "masterless" ]]
 then
  echo "warning: machines will be added to master"
 elif [[ $master_type = "master" ]]
  then
   docker-machine create rancher-master -d virtualbox
   eval $(docker-machine env rancher-master)
   docker run -d --restart=always -p 8080:8080 rancher/server
 else
  echo "error: master_type could be either masterless or master"
fi

if [[ amount_machine -ge 1 ]]
 then
  master_ip=$(docker-machine ip rancher-master)
  for ((number=1;number<=amount_machine;number++))
  do
   docker-machine create machine-$number -d virtualbox
   eval $(docker-machine env machine-$number)
   docker run -e CATTLE_HOST_LABELS='developer=salvax' -d --privileged -v /var/run/docker.sock:/var/run/docker.sock rancher/agent:v1.0.2 http://$master_ip:8080
  done
else
  echo "amount_machine should be greater than 0"
fi