# 10.sh
# Add the permissions for the client application and server application components to use the 
# oAuth2 communication flow 
az ad app permission add --id $clientApplicationId --api $serverApplicationId --api-permissions ${oAuthPermissionId}=Scope
# grant permissions for the client application to communication with the server application
az ad app permission grant --id $clientApplicationId --api $serverApplicationId
