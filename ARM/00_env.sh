# 00_env.sh
PREFIX="aksnetaad101"
#PROJECT="${PREFIX}${RANDOM}"
PROJECT=aksnetaad1017753
#
#
# 02.sh
# {
#  "appId": "d3ff920c-0ae6-49a8-96de-0ba63f0a6e68",
#  "displayName": "sp-aksnetaad10120672",
#  "name": "http://sp-aksnetaad10120672",
#  "password": "uYJlf-ijqV4uSKK1ZRh6LJ5CBLPs3bkhYZ",
#  "tenant": "28f4d78b-5ea7-463e-8982-841f9f5bd736"
#}
#
#
#
#
# 03.sh
serverApplicationId=e9b8b43a-1e6c-47c5-88f5-e3e9fcefb622
#
#
# 04.sh
serverApplicationSecret=UapxyzF2P7xRoKzBf-OOk_qq6.sP0R1dI4
#
#
#
#$ . ./05.sh 
# Invoking "az ad app permission grant --id e9b8b43a-1e6c-47c5-88f5-e3e9fcefb622 --api 00000003-0000-0000-c000-000000000000" is needed to make the change effective
#
#
#
#
#$ . ./06.sh 
#{
#  "clientId": "017304d1-a09a-4f7c-b237-47190d7b7388",
#  "consentType": "AllPrincipals",
#  "expiryTime": "2021-10-31T20:41:12.166961",
#  "objectId": "0QRzAZqgfE-yN0cZDXtziJvlyq_3hh5BhCp5PgnHp-4",
#  "odata.metadata": "https://graph.windows.net/28f4d78b-5ea7-463e-8982-841f9f5bd736/$metadata#oauth2PermissionGrants/@Element",
#  "odatatype": null,
#  "principalId": null,
#  "resourceId": "afcae59b-86f7-411e-842a-793e09c7a7ee",
#  "scope": "user_impersonation",
#  "startTime": "2020-10-31T20:41:12.166961"
#}
#$ . ./07.sh 
clientApplicationId=5aa208f2-81e3-4dd8-9a58-f1dbbf872905
#
#
#
#$ . ./08.sh 
#   {
#    "accountEnabled": "True",
#    "addIns": [],
#    "alternativeNames": [],
#    "appDisplayName": "Client",
#    "appId": "5aa208f2-81e3-4dd8-9a58-f1dbbf872905",
#    "appOwnerTenantId": "28f4d78b-5ea7-463e-8982-841f9f5bd736",
#    "appRoleAssignmentRequired": false,
#    "appRoles": [],
#    "applicationTemplateId": null,
#    "deletionTimestamp": null,
#    "displayName": "Client",
#    "errorUrl": null,
#    "homepage": null,
#    "informationalUrls": {
#        "marketing": null,
#        "privacy": null,
#        "support": null,
#        "termsOfService": null
#    },
#    "keyCredentials": [],
#    "logoutUrl": null,
#    "notificationEmailAddresses": [],
#    "oauth2Permissions": [
#        {
#        "adminConsentDescription": "Allow the application to access Client on behalf of the signed-in user.",
#        "adminConsentDisplayName": "Access Client",
#        "id": "11d159fd-ea22-4cce-8be1-0b7e6dd904ac",
#        "isEnabled": true,
#        "type": "User",
#        "userConsentDescription": "Allow the application to access Client on your behalf.",
#        "userConsentDisplayName": "Access Client",
#        "value": "user_impersonation"
#        }
#    ],
#    "objectId": "2c9dc605-5b46-462e-bc68-5e112eab4c64",
#    "objectType": "ServicePrincipal",
#    "odata.metadata": "https://graph.windows.net/28f4d78b-5ea7-463e-8982-841f9f5bd736/$metadata#directoryObjects/@Element",
#    "odata.type": "Microsoft.DirectoryServices.ServicePrincipal",
#    "passwordCredentials": [],
#    "preferredSingleSignOnMode": null,
#    "preferredTokenSigningKeyEndDateTime": null,
#    "preferredTokenSigningKeyThumbprint": null,
#    "publisherName": "Cloudy Ridge LLC",
#    "replyUrls": [
#        "https://Client"
#    ],
#    "samlMetadataUrl": null,
#    "samlSingleSignOnSettings": null,
#    "servicePrincipalNames": [
#        "5aa208f2-81e3-4dd8-9a58-f1dbbf872905"
#    ],
#    "servicePrincipalType": "Application",
#    "signInAudience": "AzureADMyOrg",
#    "tags": [],
#    "tokenEncryptionKeyId": null
#    }
#
#
#
#$ . ./09.sh 
oAuthPermissionId=6f08a7c6-95fd-47e4-88b8-3043add91298
#
#
#
#    $ . ./10.sh 
#    Invoking "az ad app permission grant --id 5aa208f2-81e3-4dd8-9a58-f1dbbf872905 --api e9b8b43a-1e6c-47c5-88f5-e3e9fcefb622" is needed to make the change effective
#    {
#    "clientId": "2c9dc605-5b46-462e-bc68-5e112eab4c64",
#    "consentType": "AllPrincipals",
#    "expiryTime": "2021-10-31T20:49:05.618846",
#    "objectId": "BcadLEZbLka8aF4RLqtMZNEEcwGaoHxPsjdHGQ17c4g",
#    "odata.metadata": "https://graph.windows.net/28f4d78b-5ea7-463e-8982-841f9f5bd736/$metadata#oauth2PermissionGrants/@Element",
#    "odatatype": null,
#    "principalId": null,
#    "resourceId": "017304d1-a09a-4f7c-b237-47190d7b7388",
#    "scope": "user_impersonation",
#    "startTime": "2020-10-31T20:49:05.618846"
#    }
#
#
#
#
#$ . ./11.sh 
tenantId=28f4d78b-5ea7-463e-8982-841f9f5bd736
#
#
#
#====================================================
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
