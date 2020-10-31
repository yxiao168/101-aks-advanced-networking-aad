# 03.sh
#
# https://docs.microsoft.com/en-us/azure/aks/azure-ad-integration-cli#create-server-application
#
# Create the Azure AD application
serverApplicationId=$(az ad app create \
    --display-name "${AKS_CLUSTER_NAME}Server" \
    --identifier-uris "https://${AKS_CLUSTER_NAME}Server" \
    --query appId -o tsv)
echo serverApplicationId=${serverApplicationId}

# Update the application group membership claims
az ad app update --id $serverApplicationId --set groupMembershipClaims=All