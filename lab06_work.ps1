# Task 1: Create two simlar but different text files.
new-item -Name file1.txt -ItemType File -value "BlahBlahBlah1"
new-item -Name file2.txt -ItemType File -value "BlahBlahBlah1
BlahBlahBlah2
BlahBlahBlah3
BobsLawBlog"

compare-object -ReferenceObject (get-content .\file1.txt) -DifferenceObject (get-content .\file2.txt)
# Doesn't work:
compare-object -referenceobject file1.txt -differenceobject file2.txt

#Task 2: See what happens!
get-service | Export-Csv .\services.csv | out-file blah.csv
# happens because the value of the IMPLIED (locational) argument "path" is null. Gotta give it something, maaaaaaaaaan.

# Task 3: 
help stop-service -ShowWindow
# You can use -DisplayName with a string, or you can use -Include with a string, or -InputObject with a service controller.

# Task 4:
help export-csv -showwindow
# -delimiter, though the pipe requires it be in quotes so it knows.
get-service | export-csv -path .\servicespipe.csv -delimiter "|"
get-service | export-csv -path .\servicesfuckyou.csv -delimiter "FUCKYOU" # NOOOOOOOOOOPE. String must be exactly one character long.

# Task 5:
# Use this: -notypeinformation

# Task 6: What to do with export commands to not overwrite something.
# Use this to not clobber: -noclobber
# Use this to prompt for confirmation: -confirm

# Task 7: how to tell PS to use the delmiter typically used in the locale settings of the system
# Use this: -UseCulture


 
