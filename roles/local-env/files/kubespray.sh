#!/bin/bash

# Check the current path
if [ ! $(pwd | grep "replicas-cluster") ]; then
  echo "Wrong path!"
  echo "Make sure you execute this script in your clusters working directory!"
  exit 1
fi

# Copy the inventory
mkdir ./kubespray-run/inventory/mycluster
cp ./inventory.ini ./kubespray-run/inventory/mycluster

# Copy the group_vars
cp -r ./group_vars ./kubespray-run/inventory/mycluster/

# Start the playbook
cd ./kubespray-run
ansible-playbook -i inventory/mycluster/inventory.ini --become --become-user=root cluster.yml
