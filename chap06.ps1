get-eventlog -logname Security -newest 50
get-eventlog | gm
Get-Process
get-service
get-eventlog -logname security -newest 100 | Export-Clixml -path F:\Schoolin\lpsiamol\blah.xml

cd F:\Schoolin\lpsiamol
get-process | export-CSV -path .\procs.csvip

get-service | Export-Clixml -Path .\Services.xml
Import-Clixml -Path .\services.xml

get-command -verb import
get-command -verb export

Get-Process | export-cliXML reference.xml

diff -referenceobject (import-clixml .\reference.xml) -DifferenceObject (get-process) -property name
help out-file -ShowWindow

get-service | out-gridview

get-service | convertto-html | out-file service.html

start-process -FilePath notepad
get-process -name notepad | stop-process

 get-process | stop-process -whatif

 get-eventlog -logname security -newest 5 | export-csv events.csv
get-content .\events.csv
import-csv .\events.csv

