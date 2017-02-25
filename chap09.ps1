get-wmiobject -class Win32_BIOS -computername (get-content .\files\computers.txt)


man get-process -ShowWindow
man import-csv -ShowWindow
import-csv .\files\computers.csv | gm

get-process -computername (import-csv .\files\computers.csv | select-object -ExpandProperty Hostname)

import-csv .\files\computers.csv | select-object -ExpandProperty Hostname | gm
 