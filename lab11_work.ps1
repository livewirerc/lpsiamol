# Task 1 import netadapter module, then use get-netadapter to get list of all non-VM adapters.

Import-Module -name NetAdapter
get-netadapter | gm
get-netadapter | Where-Object -filter {$_.virtual -eq $true}
# DIS ONE:
get-netadapter | Where-Object -filter {$_.virtual -eq $false}
get-netadapter -Physical

# Task 2: 
import-module DnsClient
get-dnsclientcache | gm
help Get-DnsClientCache -ShowWindow
#There it is:
get-dnsclientcache -type a,aaaa

# Task 3: display all exe files under windows\sys32 that are larger than 5MB
get-childitem | gm
get-childitem -path C:\windows\System32 -filter "*.exe" 
get-childitem -path C:\windows\System32 -filter "*.exe" | where-object -filter {$_.length -gt 5MB}

# Task 4: Display list of hotfixes that are security update

get-hotfix -Description 'Security Update'

# Task 5: Do that but find SYSTEM account that installed updates:
get-hotfix -description 'Update' | where -filter {$_.installedby -eq "NT AUTHORITY\SYSTEM"}
get-hotfix | gm

# Task 6: 
get-process -name conhost,svchost

