"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


#Web App :
$Global:WAName = "alexeiwa"
$Global:WALocation = $RGLocation
$Global:SKU = "F1"



################################################################
"CREATE AND DEPLOY AN APP SERVICE :"

#cd to web directory
$init_path = $pwd
Set-Location $AppPath

az webapp up `
    --resource-group $RGName `
    --location $WALocation `
    --name $WAName `
    --sku $SKU `
    --verbose



################################################################
"CREATE THE DIAGNOSTIC SETTINGS :"

# Not working
# az monitor diagnostic-settings create `
#     --resource-group $RGName `
#     --name alexeids `
#     --resource $WAName `
#     --storage-account $SAName
    # [--event-hub]
    # [--event-hub-rule]
    # [--export-to-resource-specific {false, true}]
    # [--logs]
    # [--metrics]
    # [--resource-namespace]
    # [--resource-parent]
    # [--resource-type]
    # [--workspace]

#Go back to root folder
Set-Location $init_path

"Open a browser and navigate to the app URL (http://<myAppName>.azurewebsites.net) and verify the app is running"
"http://${WAName}.azurewebsites.net"

