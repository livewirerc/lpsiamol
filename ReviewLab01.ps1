# Task 1: Run a commant that will display the newest 100 events from the 
# Application log
get-eventlog -logname application -newest 100

# Task 2: Write a command line that displays only the five top processes based 
# on virtual memory usage
help get-process -ShowWindow
get-process | Sort-Object -
get-process | gm

get-process | sort-object -Property VM -Descending | select-object -first 5

# Task 3: Create a CSV file that contains all services, including ony the 
# service name and status. Have running services listed before stopped services
get-service | get-member
get-service | select-object -Property Name,Status | sort-object -Property status -Descending | export-csv -Path .\servicenstatus.csv

# Task 4: Write a command line that changes the startup type o the BITS service
# to Manual

# Idea: get-service -name BITS | set-service -StartupType manual
# get-service -name BITS | gm
get-service -name BITS | select-object -property status, StartType, name, displayname
get-service -name BITS | set-service -StartupType manual
get-service -name BITS | set-service -StartupType automatic

# Task 5: Display list of all files named win*.* on computer. Starat in the c:
# folder.
get-childitem | gm

get-childitem -path c:\ -recurse -include "win*.*" | out-file -filepath .\WinDir.txt
notepad .\WinDir.txt

# Task 6: Get a directory listing for c:\ Program files. Include all subfolders
# and files. Direct directory listoing to a text file. Oh like I did above. k.

get-childitem -path 'C:\Program Files' -Recurse | out-file -FilePath .\files\ProgPath.txt
notepad .\files\ProgPath.txt

# Task 7: Get 20 most recent entries from security event log, convert to xml.
# Display in console.

get-eventlog -logname Security -newest 20 | convertto-xml | Out-Default
### Come back to this one XXX

# Task 8: Get list of all event logs, selecting logname, max size, overflow
# action, then convert to CSV, but without writing to a log file.
Get-EventLog -logname * | Select-Object -Property LogDisplayName, MaximumKilobytes, OverflowAction | ConvertTo-Csv
# Book answer:
Get-EventLog -list | Select -Property Log,MaximumKilobytes,OverflowAction | ConvertTo-Csv

get-eventlog -list

# Task 9: Get list of services. Keep only names, display names, and status,
# then do a bnch of HTML conversion shit.
get-service | select-object -property Name,DisplayName,Status | sort-object -Property status -descending | ConvertTo-Html -title "Service Report" -head "<H1>Installed Services</H1>" | out-file .\files\ServiceReport.html

# Task 10: Create new alias, named D, which runs get-children. Output to file
# then create 
remove-item -Path alias:D
new-alias -Name D -Value get-childitem -Description "This is an Alias to Get-Children, DUHHHHHH. Idiot." 
export-alias -name D -Path .\exportalias.ps1
notepad .\exportalias.ps1
Import-Alias -Path .\exportalias.ps1
get-alias -Definition Get-ChildItem | Select-Object -Property Name,Definition,Description

help *alias*
help export-alias -ShowWindow

# Task 11: Get installed hotfixes of update and hotfix type, but not
# Security Update
help get-hotfix -ShowWindow

get-hotfix -description update,hotfix

# Task 12: Show current working directory, but not contents
help get-childitem -showwindow
pwd # alias for get-location
help get-location -showwindow
 
get-location

# Task 13: get list of commands, then re-run command from #11, via pipeline
help Get-Command
help *command*
help *buffer*
# WINNER: get-history
help *history*

get-history -id 115 | Invoke-History

# Task 14: Run command that modifies security event log to overwrite old 
# events as needed.
Get-EventLog -list | Select -Property Log,MaximumKilobytes,OverflowAction
get-eventLog -list

help get-eventlog -ShowWindow

help Limit-EventLog
Limit-EventLog -LogName Security -OverflowAction OverwriteOlder -RetentionDays 50
limit-eventlog -logname Security -OverflowAction OverwriteAsNeeded

# Task 15: Use new-item to create directory called 'Review'
help mkdir -ShowWindow
new-item -Path F:\Schoolin\lpsiamol\Review -ItemType Directory

# Task 16: display contents of registry key

get-childitem -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders'

Get-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders'

# Task 17: Find commands to do stuph
Get-Command *restart*
# restart-computer
get-command *shutd*
help shutdown
# stop-computer
help workgroup
# remove-computer
help *restore*
help Get-ComputerRestorePoint -ShowWindow
# get-computerrestorepoint | restore-computer
Get-ComputerRestorePoint

#task 18: how do you create regkey
help Set-ItemProperty -ShowWindow
Set-ItemProperty
