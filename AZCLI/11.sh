# 11.sh
#
# Get the tenant ID of your Azure subscription using the az account show command. 
# Then, create the AKS cluster using the az aks create command. The command to create 
# the AKS cluster provides the server and client application IDs, the server application 
# service principal secret, and your tenant ID:
tenantId=$(az account show --query tenantId -o tsv)
echo tenantId=${tenantId}
#
az aks create \
    --resource-group $RESOURCE_GROUP \
    --name $AKS_CLUSTER_NAME \
    --node-count 3 \
    --ssh-key-value ~/.ssh/id_rsa.pub \
    --aad-server-app-id $serverApplicationId \
    --aad-server-app-secret $serverApplicationSecret \
    --aad-client-app-id $clientApplicationId \
    --aad-tenant-id $tenantId \
    --enable-aad --enable-azure-rbac