man invoke-command -ShowWindow

invoke-command -computername w10e01 -credential atxbs.pvt\jabels -scriptblock {get-process}
# Shit don't work.
Enable-PSRemoting -SkipNetworkProfileCheck
Set-WSManQuickConfig -force

winrm create winrm/config/Listener?Address=*+Transport=HTTPS @{Hostname="_";CertificateThumbprint="_"}

get-item WSMan:\localhost\Client\TrustedHosts

set-item -path WSMan:\localhost\Client\TrustedHosts -value "plugugly,NUCkles,w10e01,w2016s01,atxbs-dc01"
# FUCKING FINALLY!
enter-pssession -computername w10e01 -credential atxbs.pvt\jabels
exit-pssession
# WORKED
man about_remote_troubleshooting -ShowWindow

invoke-command -computername w10e01,atxbs-dc01 -command {get-eventlog security -newest 10} -Credential atxbs.pvt\jabels

get-help invoke-command -ShowWindow

invoke-command -computername w2016s01,w10e01,atxbs-dc01 -credential atxbs.pvt\jabels -ScriptBlock { get-eventlog security -newest 10 }

get-help new-pssessionoption -ShowWindow
