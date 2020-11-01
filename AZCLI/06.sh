# 06.sh
#
# Finally, grant the permissions assigned in the previous step for the server application 
# using the az ad app permission grant command. This step fails if the current account is 
# not a tenant admin. You also need to add permissions for Azure AD application to request 
# information that may otherwise require administrative consent using the az ad app permission 
# admin-consent:
#
az ad app permission grant --id $serverApplicationId --api 00000003-0000-0000-c000-000000000000
az ad app permission admin-consent --id  $serverApplicationId