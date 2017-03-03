# Task 1: 

get-process |select ProcessName,Id | ft -auto

# Task 2:

get-wmiobject -class win32_systemdriver | gm

get-wmiobject -class Win32_systemdriver | select Name,Displayname,@{l='Path';e={$_.PathName}},StartMode,state | fl

# Task 3: Two computers, get-psproider, use remoting to do it, ensure output includes computernames.

get-psprovider

invoke-command -computername atxbs-dc01,w10e01 -credential atxbs.pvt\jabels -scriptblock {get-psprovider}

# Task 4:

notepad .\files\comps.txt

Get-Service -ComputerName (Get-Content .\files\comps.txt)

# task 5:

Get-WmiObject Win32_LogicalDisk -filter='drivetype=3' | gm
Get-WmiObject Win32_LogicalDisk -filter "drivetype=3" | select DeviceID,Size,Freespace,@{l='PercentFree';e={$_.freespace/$_.size * 100}}


Get-WmiObject Win32_LogicalDisk -filter "drivetype=3" | 
select DeviceID,Size,Freespace,@{l='PercentFree';e={$_.freespace/$_.size * 100}} |
Where-Object { $_.PercentFree -gt 50 }

# Task 6: 

get-cimclass -ClassName Win32_*

# Task 7:
# THIS IS FUCKING HANDY!!!
get-ciminstance -Namespace root/CIMV2 -ClassName Win32_Service -filter "startmode='Auto' AND State<>'Running'"

# Task 8:
get-command -name *mail*
# Returns Send-MailMessage
man send-mailmessage -ShowWindow
# Required parameters: -from -subject -to

# Task 9:
gcm *permiss*

gci -path c:\ | gm
get-help *permission*
get-help *folder*
# search google for "powershell get folder permissions", responds with: Get-ACL

get-acl c:\ | fl

# Task 10: 
get-acl c:\users\(get-childitem c:\users | Select-Object -ExpandProperty Name) | fl
# nope.
get-childitem c:\users | get-acl | fl
# Yup.
man get-childitem -ShowWindow

get-childitem c:\users -directory -Force | get-acl | format-list

# Task 11:

invoke-command -computername localhost -credential localhost\jabels -scriptblock {notepad.exe}
# Nope.
#YUP:
start-process notepad.exe -credential mbison\jabels 

# Task 12:
man wait-job
# Google search: make shell pause
man sleep
start-sleep -s 10

# Task 13:
get-help operator
get-help about_operators -ShowWindow

# Task 14:
man get-winevent -ShowWindow

Get-WinEvent -listlog * | where  RecordCount -GT 0 | sort -property RecordCount -Descending

man where-object -ShowWindow

# Task 15: 
get-ciminstance -classname Win32_Processor | fl *

get-ciminstance -classname Win32_Processor | select -Property NumberofCores,Manufacturer,Name,@{l='MaxSpeed';e={$_.MaxClockSpeed}} | ft -auto

# Task 16:
Get-ciminstance -classname Win32_process
Get-ciminstance -classname Win32_process | where WorkingSetSize -GT 100000
Get-ciminstance -classname Win32_process | where WorkingSetSize -GT 100000 | select Name,PeakPageFileUsage,PeakVirtualSize,PeakWorkingSetSize,ExecutablePath | ft

# Task 17:

find-module -name *network* | select name,version,description

