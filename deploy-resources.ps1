
#################### + Read env variables + ###########################
$azureAppId = $Env:AzureClientID
$azureAppPassword = $Env:AzureClientPassword
$password = ConvertTo-SecureString $azureAppPassword -AsPlainText -Force
$azureAppCred = (New-Object System.Management.Automation.PSCredential $azureAppId, $password)
$tenantId = $Env:AzureTenantID
az login --service-principal -u $azureAppCred.UserName -p $azureAppCred.GetNetworkCredential().Password --tenant $tenantId

######################################################################