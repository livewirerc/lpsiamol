# Task 1: Create one-time background job to find all poweshel cripts on c: drive.
start-job -ScriptBlock {get-childitem -path c:\ -recurse -filter "*.ps1"}
get-job

# Task 2:
notepad .\files\comps.txt
invoke-command -ComputerName (get-content .\files\comps.txt) -scriptblock {get-childitem -path c:\ -recurse -filter "*.ps1"} -asjob
get-job -id 15 | select -expand childjobs

# Task 3: 

Register-scheduledjob -name GetSysLogWeekday -scriptblock {
    Get-EventLog -LogName system -newest 25 | Export-Clixml .\files\System_New.xml 
} -trigger (new-jobtrigger -DaysOfWeek Monday,Tuesday,Wednesday,Thursday,Friday -Weekly -at 6am)

# Task 4:
get-job
recieve-job -name GetSysLogWeekday -keep
