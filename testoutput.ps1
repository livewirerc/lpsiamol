dir
get-command *childitem*
pushd .
man pushd
pushd .
cd \
dir
popd
pwd
man popd
gc push*
get-command push*
get-command pop*
push-location . | gm
ipconfig
notepad
get-process | where-object { $_.Handles -ge 500 } | sort-object Handles | format-table Handles,Name,Description -auto
get-command *process*
"Hello Y'all" | gm
"Hello Y'all" | gm
"Hello Y'all" | gm
"Hello Y'all" | gm
$handlecount = 0
foreach($process in get-process) { $handlecount += $process.Handles }
$handlecount
$webClient = new-object System.Net.WebClient
$content = $webClient.DownloadString("http://blogs.msdn.com/PowerShell/rss.aspx")
content.substring(0,1000)
$webClient = new-object System.Net.WebClient
$content = $webClient.DownloadString("http://blogs.msdn.com/PowerShell/rss.aspx")
$content.substring(0,1000)

