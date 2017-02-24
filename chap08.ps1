
# Output all of Get-Process stuff to HTML
get-process | convertto-html | out-file .\files\get-process.html

# Same but with gci
get-childitem | convertto-html | out-file .\files\dir.html

get-childitem | get-member

get-process | gm


Start-Process notepad
get-process -name notepad | stop-process

get-process | sort-object -property CPU -Descending

get-process | convertto-html | out-file .\output\test1.html
get-process | select-object -property Name,Id,VM,PM | sort-object -property vm -desc | ConvertTo-Html | out-file .\output\test2.html

help select-object -ShowWindow

Get-Process Explorer | Select-Object -Property ProcessName -ExpandProperty Modules | Format-List
Get-Process | Sort-Object -Property WS | Select-Object -Last 5

get-process | select name,id,handle,CPU
get-process | gm
get-command -noun object
man where-object -showwindow

Get-Process | Where-Object {$_.PriorityClass -eq "Normal"} | select-object -property handles,pm,ws,cpu,name,vm,id | format-table

get-process | sort-object vm -descending | select-object -property name,id,vm

get-process | sort vm -des | gm
Get-Process | sort vm -des | select name,id,vm | gm

get-process | gm | gm | gm




