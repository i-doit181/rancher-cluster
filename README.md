rancher-cluster
===============

Scripts for rancher cluster with vagrant or docker-machine

##docker-machine
Run install.sh with following arguments:
*./install.sh docker <amount_machines> <master_type>*

##vagrant
TODO

##arguments
* type
    * docker: in order to initialize a rancher-cluster with docker-machines
    * vagrant: rancher-cluster with vagrant
* amount_machines: Amount of VMs
* master_type
    * master: Initialize a rancher-master
    * masterless: TBD
