help enter-pssession -ShowWindow

enter-pssession nuckles
exit-pssession

enter-pssession w10e01 -credential atxbs.pvt\jabels
exit-pssession

gwmi Win32_NetworkAdapterConfiguration
gwmi Win32_NetworkAdapterConfiguration -filter "Description LIKE '%intel%'"

gwmi Win32_NetworkAdapterConfiguration -filter "Description LIKE '%intel%'" | gm

help Set-NetIPAddress -ShowWindow
help stop-service -ShowWindow


