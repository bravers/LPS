function Set-InfoToFile{
	Get-Date
	Get-ComputerInfo -Property "Windows*" 	
}
$fpath = "ComputerInfo.txt"
$isfile = Test-Path $fpath 
if ($isfile){
	Write-Host "This file already exists."
}
else {
	Set-InfoToFile | Out-File $fpath
}