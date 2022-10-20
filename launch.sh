#!/bin/bash

cd infrastructure/vpc
terraform init -reconfigure
terraform apply -auto-approve
cd ../EC2
terraform init -reconfigure
terraform apply -auto-approve
sleep 10
cd ../..
cd configuration
./editfile
ansible-playbook main-playbook.yml
