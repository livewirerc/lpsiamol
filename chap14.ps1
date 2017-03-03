get-ciminstance -namespace root/SecurityCenter2 -classname AntiSpywareProduct

get-ciminstance -namespace root/CIMV2 -classname Win32_LogicalDisk | select-object -ExpandProperty VolumeName

get-ciminstance -namespace root/cimv2 -classname Win32_NetworkAdapterSetting

man restart-computer -ShowWindow

restart-computer -whatif

gcm

get-wmiobject -Namespace root/CIMv2 -list | where name -like '*dis*'
gcm -noun cim*

Get-wmiobject -namespace root\CIMv2 -list

get-wmiobject -namespace root\cimv2 -class Win32_desktop
get-wmiobject win32_desktop
gwmi antispywareproduct -namespace root\securitycenter2

get-wmiobject win32_operatingsystem | gm
get-wmiobject win32_operatingsystem | fl *
get-wmiobject win32_operatingsystem CurrentTimeZone


gwmi Win32_BIOS -computername atxbs-dc01,w10e01 -Credential atxbs.pvt\jabels | format-table -Property serialnumber,version -autosize
get-wmiobject Win32_BIOS | format-table -Property serialnumber,version -autosize

# This is a big'n, here we go.
gwmi -class win32_bios -computer atxbs-dc01,w10e01 -credential atxbs.pvt\jabels |
format-table @{label='ComputerName';expression={$_.__SERVER}},
@{label='BIOSSerial';expression={$_.SerialNumber}},
@{label='OSBuild';expression={
gwmi -class Win32_operatingsystem -ComputerName $_.__SERVER | select-object -expand BuildNumber}
} -autosize

man get-ciminstance -ShowWindow

Get-CimInstance -Namespace root/CIMV2 -classname Win32_BIOS | gm

get-ciminstance -classname Win32_LogicalDisk

#OK this seems like a pain in the ass, but is seriously cool in how it works. WinRM for the win:
invoke-command -computername atxbs-dc01,w10e01 -credential atxbs.pvt\jabels -ScriptBlock { get-ciminstance -classname Win32_process}

