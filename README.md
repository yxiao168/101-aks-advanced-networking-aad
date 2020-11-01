# AKS with Advanced Networking

Forked and re-packaged from:
https://github.com/Azure/azure-quickstart-templates/tree/master/101-aks-advanced-networking-aad


![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks-advanced-networking-aad/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks-advanced-networking-aad/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks-advanced-networking-aad/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks-advanced-networking-aad/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks-advanced-networking-aad/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks-advanced-networking-aad/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-aks-advanced-networking-aad%2Fazuredeploy.json)  

[![Self-deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fyxiao168%2F101-aks-advanced-networking-aad%2Fmain%2Fazuredeploy.json)


[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-aks-advanced-networking-aad%2Fazuredeploy.json)



> **Important:** The user running this template needs to be an **Owner** on the subscription or Resource Group where your Virtual Network is located.

`Tags: AKS, Kubernetes, Advanced Networking, Azure Active Directory`

## Solution overview and deployed resources

Executing an AKS deployment using this ARM template will create an AKS instance. However, it will also assign the selected Service Principal the following roles:
- 'Network Contributor' role against the pre-existing subnet.
- 'Contributor' role against the automatically created resource group that contains the AKS cluster resources.

It will also setup Azure Active Directory as the default Authentication mechanism for your cluster. This will allow you to setup Kubernetes RBAC based on users identity of group membership. There are a couple of limitations that apply to this scenario though:

- Azure AD can only be enabled when you create a new, RBAC-enabled cluster. You can't enable Azure AD on an existing AKS cluster.
- Guest users in Azure AD, such as if you are using a federated login from a different directory, are not supported.

## Prerequisites

Prior to deploying AKS using this ARM template, the following resources need to exist:
- Azure Vnet, including a subnet of sufficient size
- Service Principal
- Azure AD Server Application - [instructions here](https://docs.microsoft.com/en-us/azure/aks/aad-integration#create-server-application)
- Azure AD Client Application - [instructions here](https://docs.microsoft.com/en-us/azure/aks/aad-integration#create-client-application)

The following Azure CLI command can be used to create a Service Principal:

_NOTE:  The Service Principal Client Id is the Same as the App Id_

```shell
az ad sp create-for-rbac -n "spn_name" --skip-assignment
az ad sp show --id <The AppId from the create-for-rbac command> --query objectId
```

Please note that using the 'create-for-rbac' function would assign the SPN the 'Contributor' role on subscription level, which may not be appropriate from a security standpoint.

## Deployment steps

You can click the "deploy to Azure" button at the beginning of this document or follow the instructions for command line deployment using the Azure documentation:
- [Deploy resources with Resource Manager templates and Azure PowerShell](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-deploy)
- [Deploy resources with Resource Manager templates and Azure CLI](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-deploy-cli)


## Limitations
- Requires Managed Azure AD integration.
- You can't integrate Azure RBAC for Kubernetes authorization into existing clusters during preview, but you will be able to at General Availability (GA).
- Use kubectl v1.18.3+.
- During preview, you can only add Namespace level permissions via the Azure CLI.
- If you have CRDs and are making custom role definitions, the only way to cover CRDs today is to provide Microsoft.ContainerService/managedClusters/*/read. AKS is working on providing more granular permissions for CRDs. For the remaining objects you can use the specific API Groups, for example: Microsoft.ContainerService/apps/deployments/read.
- New role assignments can take up to 5min to propagate and be updated by the authorization server.
- Requires the Azure AD tenant configured for authentication to be the same as the tenant for the subscription that holds the AKS cluster.