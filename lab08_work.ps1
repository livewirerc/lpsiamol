# Task 1 - identify cmdlet that produces random number
get-help *random*
# LOOK MA IT'S A 3D6
(get-random -mi 1 -ma 6)+(get-random -mi 1 -ma 6)+(get-random -mi 1 -ma 6)

# Task 2 - get command that finds date and time
get-help *time*
get-help *date*
#get-date, bingo
get-date

# Task 3 - what type of object does task 2 produce?
get-date | gm
# Answer: System.DateTime .NET object

# Task 4 - use cmdlet from 2 and select-object display only current da of the week in a table like displakyed in book

get-date | select-object -Property DayofWeek

# Task 5 - display cmdlet that shows hotfix info shit
get-help *hotfix*
# only one...
get-hotfix

# Task 6 - get list, then sort by installation date, and display only date, user, and id.
get-hotfix | gm
get-hotfix | sort-object -property InstalledOn -descending | Select-Object -property InstalledOn,InstalledBy,HotfixId

# Task 7 - same as above, but by description, and include description, id and install date. Put results in html file.

get-hotfix | sort Description | select Description,HotFixID,Installedon | convertto-html | out-file .\output\Hotfixes.html


# Task 8 - get 50 newest entries of Application log, sort with oldest appearing first, with ones at same time sorted by index.
# Display index, time, and source for each entry. Place info into a text file.,

Get-EventLog -logname Application -newest 50 | sort-object timegenerated,index | select-object Index,TimeGenerated,source | out-file .\output\timegen.txt

