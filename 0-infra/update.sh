#!/bin/bash

# set verbose mode
set -ex

# load envs vars file
source ./envs.sh

# ensure system is updated
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

# ensure jq is installed
sudo apt install -y jq