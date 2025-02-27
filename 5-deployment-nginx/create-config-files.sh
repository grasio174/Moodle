# Copyright 2022 Google LLC
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash

# enable verbose mode
set -ex

# load the env vars
source ../0-infra/envs.sh

# ensures the system is up to date
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

# ensures envsubst is installed
sudo apt install -y gettext-base

# generate the specific config file
envsubst \$MOODLE_ROOT_PATH_NO_SLASH < ./deployment-templates/moodle-configmap-nginx-template.yaml > ./moodle-configmap-nginx.yaml

# generate the specific deployment file
envsubst \$MOODLE_ROOT_PATH_NO_SLASH < ./deployment-templates/moodle-deployment-nginx-template.yaml > ./moodle-deployment-nginx.yaml
