
# Task 1:
Get-WmiObject -Class Win32_BIOS -ComputerName 'localhost','mbison' -AsJob
invoke-command {get-wmiobject -class Win32_BIOS} -ComputerName 'localhost','mbison' -asjob
Get-Job -id 4 | fl
$bioses = receive-job -id 4 -keep
$bioses | Export-Clixml -path .\files\bioses.xml

Import-Clixml -Path .\files\bioses.xml