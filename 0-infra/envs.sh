

PROJECT_NUMBER=1054155985222
PROJECT_ID=vertical-jetty-448611-h5
REGION=asia-southeast1
ZONE=$REGION-c

VPC_NAME=moodle-vpc
SUBNET_NAME=moodle-subnet
SUBNET_RANGE=10.10.0.0/24

# gke specific variables
NODE_SA_EMAIL=1054155985222-compute@developer.gserviceaccount.com
GKE_POD_RANGE=10.230.0.0/18
GKE_SVC_RANGE=10.231.0.0/19
GKE_MASTER_IPV4_RANGE=10.10.1.0/28

# cloud build specific variables
CLOUD_BUILD_SA_EMAIL=1054155985222@cloudbuild.gserviceaccount.com

# if you have VMs in a different subnet, make sure to include it here, separated by comma (,)
MASTER_AUTHORIZED_NETWORKS=10.11.0.6/32,10.10.0.2/32,34.143.160.241/32 

# peering ranges for managed services, such as cloud sql and filestore
MOODLE_MYSQL_MANAGED_PEERING_RANGE=10.124.37.0
MOODLE_FILESTORE_MANAGED_PEERING_RANGE=10.12.0.0

# NAT config
NAT_CONFIG=moodle-nat-config
NAT_ROUTER=moodle-nat-router

# db specific variables
GKE_NAME=moodle-cluster
MYSQL_INSTANCE_NAME=moodle-sql
MYSQL_ROOT_PASSWORD=Rizandi123.,
MYSQL_DB=moodle-db
MYSQL_MOODLE_DB_CHARSET=utf8mb4 #recommended collation for Moodle. Change only if necessary.
MYSQL_MOODLE_DB_COLLATION=utf8mb4_unicode_ci #recommended collation for Moodle. Change only if necessary.

# other managed services variables
REDIS_NAME=moodle-redis
FILESTORE_NAME=moodle-nfs
FILESTORE_MOUNT=/mnt/filestore1

# variables for config files and companion shell scripts

# you can change this to any instance name for your current instance, later you can change this
# if you plan to install a different instance, rename it to some different squad name, etc.
export MOODLE_ROOT_PATH=/moodleroot-instance1 
export MOODLE_ROOT_PATH_NO_SLASH=${MOODLE_ROOT_PATH/?}
MOODLE_ROOT_IN_FILESTORE=$FILESTORE_MOUNT/$MOODLE_ROOT_PATH_NO_SLASH
