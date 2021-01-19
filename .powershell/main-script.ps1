# Main PowerShell script. Calls sub script with certain parameters.

Write-Output "Main-script started from $PSCommandPath"

# Setting a globalvariable to see if we can change this in a sub-script.
$simple_string = "Set in the main script."
$global:another_string = "Set in the main script."
$simple_object = New-Object -TypeName psobject
$simple_object | Add-Member -MemberType NoteProperty -Name main_property -Value "Property set in the main script."

# Call sub-script with string, int and string
& "$PSScriptRoot\sub-script.ps1" "Param1" 5 "Param3"

if ($simple_string -eq "Set in the main script.") {
  Write-Output "A simple string was not changed in the sub script."
} else {
  Write-Output "A simple string was changed in the sub script."
}

if ($global:another_string -eq "Set in the main script.") { 
  Write-Output "Another string was not changed in the sub script."
} else { 
  Write-Output "Another string was changed in the sub script."
}

$simple_object.main_property
$simple_object.sub_property

# Sub-script has set a variable in the global scope, which we can access here
Write-Output "Sub-script returned: $return_value"

# Call sub-script with string, int and string
& "$PSScriptRoot\sub-folder\sub-script.ps1" "Param1" 5 "Param3"

# Sub-script has set a variable in the global scope, which we can access here
Write-Output "Sub-script returned: $return_value"

if (Test-Path env:CI) {
  Write-Output "Running on the GitHub Actions server farm."
} else {
  Write-Output "Running on a local development machine."
}