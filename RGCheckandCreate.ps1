#Connect-AzAccount
#Select-AzSubscription -Subscription "Pay-As-You-Go"

$RGName = "RG-Powershel-2"
$location = "North Europe"

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