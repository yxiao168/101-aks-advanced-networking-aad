# 07.sh
# Create Azure AD client component
#
# The second Azure AD application is used when a user logs to the AKS cluster 
# with the Kubernetes CLI (kubectl). This client application takes the authentication 
# request from the user and verifies their credentials and permissions. Create the Azure 
# AD app for the client component using the az ad app create command:
# 
clientApplicationId=$(az ad app create \
    --display-name "${aksname}Client" \
    --native-app \
    --reply-urls "https://${aksname}Client" \
    --query appId -o tsv)
echo clientApplicationId=${clientApplicationId}    