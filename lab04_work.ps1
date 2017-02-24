# Task 1 - get list of processes
get-process -name *
# Task 2 - get 100 most recent entries in app log
get-eventlog -logname Application -newest 100
# Task 3 - display lis of all commands of cmdlet type
get-command -CommandType Cmdlet
# Task 4 - show list of all aliases
get-alias
#task 5 - make new alias to launch Notepad with np
get-command *alias*
new-alias -name np -Value Notepad.exe
np
# Task 6 - show list of services running starting with M
get-service -name m*
# Task 7 - Display list of all windows firewall rules
get-command *firewall*
get-netfirewallrule
man get-netfirewallrule -ShowWindow
# Task 8 Display list of only inbound Windows Firewall rules
get-netfirewallrule -direction inbound




