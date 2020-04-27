$fileName = "CreateNewFile.txt"
$textForFile = "This file is created using a script that also writes text to a file."
New-Item -Path "." -Name $fileName -ItemType File -Force
$textForFile | Out-File $fileName 