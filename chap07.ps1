# Testing command:

import-module operationsmanager
import-module ActiveDirectory

get-content env:psmodulepath

get-module


get-module | remove-module
help *network*

# After struggling with importing my OperationsManager Module I managed to find
# a way to connect to it via PS and pull a list of all scom class instances!
# Advice on how to import the PS modules without having to install the Console:
# https://stefanroth.net/2013/03/13/scom-2012-install-scom-powershell-modules-without-scom-console-installation/
import-module OperationsManager
get-scomclassinstance -computername W2016S03.atxbs.pvt -credential (get-credential) | Sort-Object
# Dude that totally worked.

new-item -path F:\Schoolin\lpsiamol\Console -itemtype Directory
export-console F:\Schoolin\lpsiamol\Console\JasonShell.psc

# Installs badass ISE extension thang from PowershellGallery via PowerShellGet
install-module isescriptinggeek -AllowClobber
get-command -module isescriptinggeek


## DAS VIDEOS!!! I swear these have nothing to do with the actual class stuff.


get-adcomputer





# Videos

help get-wmiobject -full



