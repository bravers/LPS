function Set-InfoToFile{
	Get-Date
	Get-ComputerInfo -Property "Windows*" 	
}
$fpath = "ComputerInfo.txt"
$isfile = Test-Path $fpath 
if ($isfile){
	Write-Host "Такой файл уже существует"
}
else {
	Set-InfoToFile | Out-File $fpath
}