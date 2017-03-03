# Task 1 find command to retrieve IP address of system
get-wmiobject -Namespace root/CIMv2 -list | where name -like '*network*'
gwmi win32_networkconnection | format-list *
gwmi win32_networkadapterconfiguration | gm
# Method(s): ReleaseDHCPLease, RenewDHCPLease, EnableDHCP
gwmi win32_networkadapterconfiguration | select-object -property pscomputername,ipaddress | format-list

F:\Scripts\ps\WmiExplorer.ps1

# Task 2:

# Reference:
gwmi -class win32_bios | 
format-table @{label='ComputerName';expression={$_.__SERVER}},
@{label='BIOSSerial';expression={$_.SerialNumber}},
@{label='OSBuild';expression={
gwmi -class Win32_operatingsystem -ComputerName $_.__SERVER | select-object -expand BuildNumber}
} -autosize

# Rill dill:
invoke-command -computername atxbs-dc01,w10e01 -Credential $creds -scriptblock {
gwmi -class Win32_OperatingSystem | select-object @{label='ComputerName';expression={$_.__SERVER}},
@{l='BIOSSerialNumber';e={(gwmi Win32_BIOS).serialnumber}},
BuildNumber,Caption 
}| ft -AutoSize

# couldn't get this to work:
gwmi -class Win32_OperatingSystem -computername atxbs-dc01,w10e01 -Credential $creds | select-object @{label='ComputerName';expression={$_.__SERVER}},
@{l='BIOSSerialNumber';e={(gwmi Win32_BIOS -computername atxbs-dc01,w10e01 -Credential $creds).serialnumber}},
BuildNumber,Caption | ft -AutoSize

# Task 3:
get-hotfix
get-ciminstance Win32_QuickFixEngineering
# Doesn't list source? Why not?

# Task 4: DO THIS
get-ciminstance Win32_Service

get-ciminstance Win32_Service | select Name,Status,StartMode,StartName

# Task 5: 
gcm *cim*
get-cimclass -namespace root/SecurityCenter2 -classname *product*
# Task 6:
get-ciminstance -namespace root/SecurityCenter2 -classname AntiSpywareProduct