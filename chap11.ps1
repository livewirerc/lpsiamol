

get-service -name e*,*s*

help Sort-Object -ShowWindow

get-service | Sort-Object 




5 -eq 5

"hello" -like "*ll*"

500 -ge 300
500 -eq 200

get-service | where-object -FilterScript {$_.Name -like 'A*'}
get-service | where-object -FilterScript {$_.Status -eq 'Running'}


get-help measure
# measure-object

get-process


get-process | where-object -filter { $_.name -notlike 'powershell*'} |Sort-Object -Property VM -Descending |
select-object -first 10 | measure-object -Property VM -sum




