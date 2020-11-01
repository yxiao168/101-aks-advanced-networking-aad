# 16.sh
#
#  Create a new cluster using Azure RBAC and managed Azure AD integration
#  https://docs.microsoft.com/en-us/azure/aks/manage-azure-rbac
# 
az feature register --namespace "Microsoft.ContainerService" --name "EnableAzureRBACPreview"
az feature list -o table --query "[?contains(name, 'Microsoft.ContainerService/EnableAzureRBACPreview')].{Name:name,State:properties.state}"
az provider register --namespace Microsoft.ContainerService
#
# $ # Install the aks-preview extension
az extension add --name aks-preview
#    ake sure you have the latest version installed
#    The installed extension 'aks-preview' is in preview.
#    $ 
#    $ # Update the extension to make sure you have the latest version installed
az extension update --name aks-preview

