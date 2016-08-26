#!/bin/bash

type=$1
amount_machine=$2
master_type=$3

if [[ $type = "docker" ]];
 then
  ./docker-machine/rancher-machine-install.sh $2 $3
 elif [[ $type = "vagrant" ]];
  then
   ./vagrant/vagrant-install.sh $2 $3
 else
  echo "error: type should be docker or vagrant"
fi