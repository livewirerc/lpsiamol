get-command *childitem*


pushd .

cd \
dir
popd
man popd
get-command push*
get-command pop*
# ---------------------------------------------------

ipconfig

notepad

# ---------------------------------------------------
get-process | where-object { $_.Handles -ge 500 } | sort-object Handles | format-table Handles,Name,Description -auto

get-command *process*

# ---------------------------------------------------

"Hello Y'all" | gm

# ---------------------------------------------------

$handlecount = 0
foreach($process in get-process) { $handlecount += $process.Handles }
$handlecount

# Example 4 -----------------------------------------

$webClient = new-object System.Net.WebClient
$content = $webClient.DownloadString("http://blogs.msdn.com/PowerShell/rss.aspx")
$content.substring(0,1000)

#----------------------------------------------------

get-history | foreach-object {$_.commandline } > .\testoutput.ps1
notepad .\testoutput.ps1

# Example 5 ------------------------------------------

$xmlContent = [xml] $content
$xmlcontent
$xmlcontent | gm

$xmlContent.rss
$xmlcontent.xml

$xmlcontent.rss.channel.item | select Title

Get-CimInstance Win32_Bios

# Example 6 -----------------------------------------





