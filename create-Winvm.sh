#!/bin/bash
# Script to deploy Windows 2012 VM in Azure - version 1.0

# Login to Azure Account and list all subscriptions

az login
az account list -o table

# az account set -s <subscription name>

# Ensure the Resource group already exists

az group list -o table

rgname="network-rg"
location="WestUS"
vmname="vmname01"
avset="network-as"
size="Standard_D2s_v3"
vnet="mgmt-subnet"
subnet="subnet1"
uname="<>"

# Create Youtrack Virtual Machine using the global variables

az vm create --resource-group $rgname --name $vmname --image Win2012R2Datacenter --admin-username $uname--size $size --location $location --vnet-name $vnet --availability-set $avset --subnet $subnet
