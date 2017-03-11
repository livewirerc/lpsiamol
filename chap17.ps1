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
$computers = 'nurgle','localhost'
$computers
$computers | gm

$computers.ToUpper()
$computers
$computers.count



