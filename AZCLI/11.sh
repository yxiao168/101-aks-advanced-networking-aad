# 11.sh
#
# Get the tenant ID of your Azure subscription using the az account show command. 
# Then, create the AKS cluster using the az aks create command. The command to create 
# the AKS cluster provides the server and client application IDs, the server application 
# service principal secret, and your tenant ID:
#
# https://docs.microsoft.com/en-us/azure/aks/availability-zones
#
# - Use kubectl v1.18.3+.
#
tenantId=$(az account show --query tenantId -o tsv)
echo tenantId=${tenantId}
#
VERSION=$(az aks get-versions \
    --location $REGION_NAME \
    --query 'orchestrators[?!isPreview] | [-1].orchestratorVersion' \
    --output tsv)
echo VERSION=${VERSION}
#
az aks create \
    --resource-group $RESOURCE_GROUP \
    --name $AKS_CLUSTER_NAME \
    --kubernetes-version $VERSION \
    --vm-set-type VirtualMachineScaleSets \
    --node-count 1 \
    --ssh-key-value ~/.ssh/id_rsa.pub \
    --aad-server-app-id $serverApplicationId \
    --aad-server-app-secret $serverApplicationSecret \
    --aad-client-app-id $clientApplicationId \
    --aad-tenant-id $tenantId 
#
#    --zones 1 2 3 \
#    --load-balancer-sku standard \
#
#   --enable-azure-rbac
#   --enable-aad 