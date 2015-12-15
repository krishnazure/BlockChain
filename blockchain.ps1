#Login-AzureRmAccount
$location = "Central US"
$resourceGroupName = "consysvmrg5"
$vm = "consysvm5"
$storagetype = "Standard_LRS"
$storageAccountName ="consysstorageddd5"
$instancename  = $vm+"instance5"

New-AzureRmResourceGroup  -Name  $resourceGroupName -Location $location
#Create Storage Account 
#$StorageCreationStatus = New-AzureRmStorageAccount -ResourceGroupName $resourceGroupName  -Name $storageAccountName -Location $location -Type $storagetype

New-AzureRmResourceGroupDeployment  -Name $vm -instanceName $instancename   -blockchain dev -storageAccount $storageAccountName -stratoVersion 1.0 -ResourceGroupName $resourceGroupName -TemplateUri https://raw.githubusercontent.com/azure/azure-quickstart-templates/master/blockapps-strato/azuredeploy.json