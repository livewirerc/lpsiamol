# Task 1: What methof od a ServiceController object will paus service without stopping it completely.
get-service | gm
# Answer: pause()

# Task 2: What methof od a process object would terminate a given process?
get-process | gm
# Answer: kill()

# Task 3: What method of a WMI Win32_process object would terminate a given process?
help get-wmiobject -ShowWindow
get-wmiobject Win32_process | gm
# Answer: terminate()

# Task 4: Write four commands that coudl be used to terminate all processes named Notepad.
# Work:
start-process Notepad
get-wmiobject win32_process -filter "name LIKE '%notepad%'" | Invoke-WmiMethod -Name Terminate

# The four commands:
get-process -name notepad | ForEach-Object { $_.kill()}
stop-process -name notepad
get-process -name notepad | stop-process
get-wmiobject win32_process -filter "name LIKE '%notepad%'" | Invoke-WmiMethod -Name Terminate

# Task 5: Take list of names, display them in all uppercase.
help case
help export-formatdata
get-content .\files\comps.txt | gm
# This one:
get-content .\files\comps.txt | ForEach-Object { $_.ToUpper()}


