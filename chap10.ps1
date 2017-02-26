get-process
get-process | gm

get-wmiobject Win32_OperatingSystem
get-wmiobject Win32_OperatingSystem | gm

man format-table -ShowWindow

get-wmiobject Win32_bios
get-wmiobject win32_bios | format-table -AutoSize

get-process | format-table -property ID,Name,Responding -AutoSize
get-process | format-table -Property *
get-process | format-list -Property *
get-process | format-wide name -column 6

get-service | format-table @{name='ServiceName';expression={$_.Name}},Status,Displayname
get-process | format-table name,@{name='VM(MB)';expression={$_.VM / 1MB -as [int]}} -autosize

get-process | fl *

get-process |
format-table name,
@{name='VM(MB)';expression={$_.VM / 1MB -as [int]}} -autosize

get-service | format-table | gm


get-process | out-gridview
get-process | format-table | out-gridview # NOPE!!!

get-process ; get-service
get-service ; get-process

