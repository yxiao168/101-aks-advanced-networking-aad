# 02.sh
# Create a service principal 
# https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli
#
az ad sp create-for-rbac --name ${SERVICE_PRINCIPAL_NAME}
