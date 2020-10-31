# 00_env.sh
PREFIX="aksnetaad101"
#PROJECT="${PREFIX}${RANDOM}"
PROJECT=aksnetaad10120672
#
#
# 03.sh
serverApplicationId=d3bfa8e1-7d65-4a1e-adfa-f1405ce0e188
#
#
# 04.sh
serverApplicationSecret=3lhHMpVX8G7ByBzNY966AowzvjCtpK.Z1j
#
#
# 07.2h
clientApplicationId=6380e222-b412-41e7-808b-e4ea45a901bb
#
#
#
# $ . ./09.sh 
oAuthPermissionId=fafa4994-27f2-428f-aca9-f20b82491fcf
#
#
echo "PROJECT=${PROJECT}"
#
REGION_NAME=eastus2
RESOURCE_GROUP=rg-${PROJECT}
VNET_NAME=vnet-${PROJECT}
SUBNET_NAME=subnet-${PROJECT}
#
AKS_CLUSTER_NAME=${PROJECT}
#
SERVICE_PRINCIPAL_NAME=sp-${PROJECT}
#MONGO_USER=mongoadmin
#MONGO_PASS=mongopass
#MONGODB_URI="mongodb://${MONGO_USER}:${MONGO_PASS}@localhost:27017/ratingsdb"
#MONGODB_URI="mongodb://${MONGO_USER}:${MONGO_PASS}@ratings-mongodb.ratingsapp:27017/ratingsdb"
#
#ACR_NAME=aksworkshop-acr-${PROJECT}
#ACR_NAME=acr${PROJECT}
#WORKSPACE=workspace-${PROJECT}
