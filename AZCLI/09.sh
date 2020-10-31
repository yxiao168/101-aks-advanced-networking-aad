# 09.sh
#
# Get the oAuth2 ID for the server app to allow the authentication flow between 
# the two app components
#
oAuthPermissionId=$(az ad app show --id $serverApplicationId --query "oauth2Permissions[0].id" -o tsv)
echo oAuthPermissionId=${oAuthPermissionId}
