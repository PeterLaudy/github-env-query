# Main PowerShell script. Calls sub script with certain parameters.

Write-Output "Main-script started."
& "$PSScriptRoot\sub-script.ps1" "Param1" 5 "Param3"