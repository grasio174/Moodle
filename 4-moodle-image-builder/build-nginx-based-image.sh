
#!/bin/bash

# enable verbose mode
set -ex

# load the env vars
source ../0-infra/envs.sh

# build the image for nginx
gcloud builds submit \
  --config cloudbuild-nginx.yaml \
  --substitutions=_MOODLE_ROOT_PATH=$MOODLE_ROOT_PATH,_MOODLE_DATAROOT_PATH=$MOODLE_ROOT_PATH/moodledata,_MOODLE_PATH=$MOODLE_ROOT_PATH/moodle \
  --region asia-east1 
./