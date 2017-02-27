get-help *privilege* 

Find-Module -Name *priv*
install-module poshprivilege

9

get-privilege -currentuser

get-privilege -privilege SeDenyBatchLogonRight
help add-privilege -ShowWindow
get-privilege | format-table -AutoSize

Add-Privilege -AccountName administrators -privilege SeDenyBatchLogonRight -whatif
Add-Privilege -AccountName administrators -privilege SeDenyBatchLogonRight
remove-privilege -AccountName Administrators -privilege SeDenyBatchLogonRight

