

#################### + Read env variables + ###########################
azureAppId = $Env:AzureClientID
azureAppPassword = $Env:AzureClientPassword
tenantId = $Env:AzureTenantID
subscriptionId=$Env:AzureSubscriptionID

#password = ConvertTo-SecureString $azureAppPassword -AsPlainText -Force
#azureAppCred = (New-Object System.Management.Automation.PSCredential $azureAppId, $password)


#az login --service-principal -u azureAppCred.UserName -p $azureAppCred.GetNetworkCredential().Password --tenant $tenantId


echo $azureAppId
echo $tenantId
echo $subscriptionId
echo $azureAppPassword

######################################################################