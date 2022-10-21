#!/bin/bash

cd infrastructure/vpc
terraform init
terraform apply -auto-approve
cd ../EC2
terraform init
terraform apply -auto-approve
sleep 10
cd ../..
