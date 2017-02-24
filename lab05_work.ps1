# script stuffs to do this thing.
# Task 1
cd hkcu:
cd HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer
Get-ChildItem
Set-ItemProperty -path .\Advanced -name DontPrettyPath -value 0
# task 2 - Create a new directory on the PSdrive I created before, for fucks sake.
new-item -path fart:\tools -ItemType directory
# task 3 - creating a file at the new spot
new-item -path fart:\tools -name test.txt -ItemType file
# Task 4 
help set-item -full
# Task 5
get-childitem env:temp
# task 6
help get-childitem -ShowWindow

