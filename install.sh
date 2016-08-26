#!/bin/bash

type=$1
amount_machine=$2
master_type=$3

if [[ $type = "docker" ]];
 then
  ./docker-machine/rancher-machines.sh $amount_machine $master_type
 elif [[ $type = "vagrant" ]];
  then
   ./vagrant/vagrant-install.sh $amount_machine $master_type
 else
  echo "error: type should be docker or vagrant"
fi