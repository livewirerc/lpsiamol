$var = "localhost"

$var

$var | gm


get-wmiobject Win32_computersystem -ComputerName localhost

get-wmiobject Win32_computersystem -ComputerName $var

$var = 5
$var | gm
$var = 5.5

$computername = 'Nurgle'
$phrase = "`$computername contains $computername"
$phrase

$phrase = "`$computername`ncontains`n$computername"
$phrase
$computers = 'w10e01','atxbs-dc01','mbison'
$computers
$computers | gm

$computers.ToUpper()
$computers
$computers.count

ping atxbs-dc01

$computers = $computers | ForEach-Object {$_.ToUpper()}
$computers = $computers | ForEach-Object {$_.ToLower()}

$computers | Select-Object length
$computers | gm

# This is that cool Powershell v3 shit yo!
get-service | foreach-object {write-output $_.DisplayName}

$services = get-service
$services.DisplayName

get-service | select-object -ExpandProperty DisplayName

Get-WmiObject -class Win32_Service -filter "name='bits'" | gm

$services = get-service
$services
$firstname = "The first name is $($services[0].Name)"
$firstname

[int]$number = read-host "Enter a number, please: "
$number = $number * 10
$number
