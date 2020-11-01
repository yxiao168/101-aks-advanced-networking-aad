# 04.sh
#
# get the service principal secret 
#
serverApplicationSecret=$(az ad sp credential reset \
    --name $serverApplicationId \
    --credential-description "AKSPassword" \
    --query password -o tsv)
echo serverApplicationSecret=${serverApplicationSecret}