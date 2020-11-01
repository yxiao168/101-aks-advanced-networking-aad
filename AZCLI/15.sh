# 15.sh
#
# Create RBAC binding
# 
# Create a YAML manifest named "basic-azure-ad-binding.yaml"
# and paste the following contents. On the last line, replace 
# userPrincipalName_or_objectId with the UPN or object ID 
# output from the previous command:
#                 ~~~~~~~~~~~~~~~~~
#
kubectl apply -f basic-azure-ad-binding.yaml
