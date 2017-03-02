param (
[Parameter(Mandatory=$True)]
[string]$CmdletName,
[string]$ParameterName = '*'
)
(Get-Command $CmdletName).parameters.values |
where name -like $ParameterName | 
where aliases | 
select name, aliases