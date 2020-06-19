$RGName = "RG-Powershel-2"
$location = "North Europe"
$storageAccountName = "stortrainify1906"

$RG = Get-AzResourceGroup -Name $RGName -ErrorAction SilentlyContinue

if(!$RG)
{
$RG = New-AzResourceGroup -Name $RGName -Location $location
Write-Host "New RG Created"
}

else
{
Write-Host "RG Already Exists"
}

$SA = Get-AzStorageAccount -ResourceGroupName $RGName -Name $storageAccountName -ErrorAction SilentlyContinue

if(!$SA)
{
$SA = New-AzStorageAccount -ResourceGroupName $RGName -Name $storageAccountName -SkuName Standard_LRS -Location $location -Kind StorageV2 -AccessTier Hot
Write-Host "new storage account created"
}

else
{
Write-Host "Storage Account Already Exists"
}