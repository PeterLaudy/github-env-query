# Main PowerShell script. Calls sub script with certain parameters.

Write-Output "Main-script started in $pwd"

# Call sub-script with string, int and string
& "$PSScriptRoot\sub-script.ps1" "Param1" 5 "Param3"

# Sub-script has set a variable in the global scope, which we can access here
Write-Output "Sub-script returned: $return_value"