# Fuckin' around

[int]$a = 100
$b = "Hello world"
$a | gm
$b | gm

new-pssession -ComputerName "w10e01","localhost","atxbs-dc01"
get-pssession
get-pssession | Remove-PSSession

$sessions = new-pssession -computername w10e01,w2016s01,atxbs-dc01 -Credential atxbs.pvt\jabels

get-pssession
$sessions

