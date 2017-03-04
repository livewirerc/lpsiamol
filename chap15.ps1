start-job -ScriptBlock {dir}
start-job -scriptblock {get-eventlog -security -newest 10 -computername localhost}
get-job


enable-psremoting -SkipNetworkProfileCheck
get-wmiobject win32_operatingsystem -ComputerName localhost -asjob

help * -Parameter asjob

invoke-command -ScriptBlock { get-process } -ComputerName localhost -asjob -JobName Ballzzzzz

get-job -id 10 | fl *

get-job -id 10 | Receive-Job

get-job -id 3 | select-object -ExpandProperty ChildJobs
receive-job -id 4 -keep

remove-job -id 9
get-job
get-job | where { -not $_.HasMoreData } | remove-job
get-job

receive-job -id 11 -keep


