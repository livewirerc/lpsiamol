# Task 1: Display table of processes that include names,m ids, and whether they're responding. Have
# it take up as little horizontal room as possible, but don't allow info to be tuncated.

get-process | gm
get-process | format-table -property name,ID,Responding -AutoSize

# Task 2: Displaky table of processes that include names and IDs. Also include columns for 
# virtual and physical memory usage, expressing those values in MB.

get-process |
format-table -property name,id,
@{name='VM(MB)';expression={$_.VM / 1MB -as [int]}},
@{name='PM(MB)';expression={$_.PM / 1MB -as [int]}} -AutoSize

# Task 3: Use Get-eventlog to display available event logs

get-help get-eventlog -ShowWindow
get-eventlog -list

get-eventlog -list | gm

get-eventlog -list | 
format-table -property @{name='LogName';expression={$_.LogDisplayName}},
@{name='RetDays';expression={$_.minimumretentiondays}} -autosize

# Task 4: Display list of services so that a separate table is displayed 
# for services that are started and stopped. Stopped should be displayted first.

get-service | gm
get-service | sort-object -Property status -descending | format-table -GroupBy status

 
# Task 5: Display four column wide list of all directories at root of c:

get-childitem -path c:\ -Directory | format-wide -column 4

# task 6: Created formated list of all .exe files in C:\windows, displaying name, version info,
# and file size. Powershell uses the length property, but display 'Size'.

get-childitem | gm
get-childitem c:\windows -filter *.exe | format-list -property Name,VersionInfo,@{name="Size";expression={$_.length}}




