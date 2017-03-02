# Task 1, open remote session to another system launch notepad.exe

new-pssession -computername w10e01 -credential atxbs\jabels
enter-pssession -id 29
notepad.exe
# It launched a copy on the remote system (could see in Task Manager)
exit-pssession

# Task 2, using invoke-command retrieve list ofd services that aren't started from remote computers.
# format result as wide list.
invoke-command -computername w10e01,w2016s01 -Credential atxbs.pvt\jabels -scriptblock {Get-Service | Where-Object {$_.status -eq "stopped"}} | Format-Wide -column 3

# Task 3, 
get-process | gm


invoke-command -computername w10e01,w2016s01 -Credential atxbs.pvt\jabels -scriptblock {get-process | Sort-Object -Property VM -descending | Select-Object -Property VM,Name -first 10} | format-table -AutoSize

# Task 4 

new-item -path .\files\computerz.txt -itemtype File -value "w10e01,w2016s01,atxbs-dc01"
notepad .\files\computerz.txt

invoke-command -computername (get-content .\files\computerz.txt) -Credential atxbs.pvt\jabels -scriptblock {Get-EventLog -LogName Application -newest 100 } | sort-object -Property PSComputerName

# Task 5

invoke-command -computername (get-content .\files\computerz.txt) -credential atxbs.pvt\jabels -scriptblock { 
get-itemproperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\' | select-object -property ProductName,EditionID,CurrentVersion
} | format-table -AutoSize


