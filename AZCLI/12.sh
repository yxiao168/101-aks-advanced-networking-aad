# 12.sh
#
# Access cluster with Azure AD
# 
az aks get-credentials --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER_NAME --overwrite-existing