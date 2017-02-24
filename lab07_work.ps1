# So this one doesn't have steps, just a goal, run network troubleshooting pack.
# Be prompted for Instance ID, hit enter, and connect to the site in the book.

# Okay, troubleshooting...
Get-command *troublesh*
# Cool lets get help.
man Get-TroubleshootingPack -ShowWindow
# Nope.
man invoke-TroubleshootingPAck -show

# maybe a module, figure this shit out.
man get-module -ShowWindow
get-module *trouble* -listavailable
# Ok that one referenced the above two commands.
import-module TroubleshootingPack
get-module
# Ok that's installed, lets see what happens.
Invoke-TroubleshootingPack
# Nope.
man Invoke-TroubleshootingPack -ShowWindow
man get-troubleshootingpack -ShowWindow

dir c:\windows\diagnostics\system

get-troubleshootingpack -path c:\windows\Diagnostics\System\Networking | invoke-troubleshootingpack
# Give it 1, 2, and http://pluralsight.com/browse/it-ops