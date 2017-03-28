# Task 1 - use write-output to display the result of 100 times 10
man write-output -ShowWindow

$math = (100 * 10)
write-output -InputObject $math

# Task 2 - Use write-host to display the results of 100 times 10
man write-host -ShowWindow

# Assuming the $math variable above)

write-host -Object $math -ForegroundColor red -BackgroundColor black

# Task 3 - prompt user for injput, then take input and display it in yellow text.

get-help *input*
$name=read-host -prompt "Input your name, please"
write-host -object "Your name is fuckin $name" -ForegroundColor yellow

# Task 4 - Prompt user to enter name, and then display the name only if it's longer than five characters. 
# Do all this with a single PS expression . Don't use a variable. GOOD LUCK FUCKERRRRRRR.

get-help where -ShowWindow

write-host -object (read-host -prompt "Tell me your name, foo" | where {$_.length -gt 5})


