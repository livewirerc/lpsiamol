get-help share

get-help new-fileshare -ShowWindow


new-item -path c:\schoolin\LABS -ItemType directory

# new-fileshare -name LABS -relativepathname c:\schoolin\labs -whatif

$MyShare = new-smbshare -name Labs -path C:\schoolin\LABS -description "Labs Share" -changeaccess everyone -fullaccess administrators -cachingmode documents
$myshare | Get-SmbShareAccess

remove-smbshare -name LABS
