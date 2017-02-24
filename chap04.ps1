get-process | Export-Clixml .\baseline.xml
compare-object -ReferenceObject (import-clixml .\baseline.xml) -DifferenceObject (get-process) -property Name
(get-command get-eventlog | select -ExpandProperty parameters).computername.aliases


(get-command get-eventlog | select -ExpandProperty parameters).computername.aliases

help get-childitem -full