# PowerShell sub script. Called from main-script with certain parameters.

Write-Output "Sub-script started from $PSCommandPath"

Write-Output "There are a total of $($args.count) arguments"
For ( $i = 0; $i -lt $args.Count; $i++ ) {
    $type = $args[$i].GetType() | Select -ExpandProperty Name
    Write-Output "Argument  $i => $($args[$i]) ($type)"
}

# Trying to return a parameter to the calling script.
$global:return_value="Result returned from sub-script (42)"

$global:simple_string = "Set in the sub script."
$simple_string = "Set in the sub script on the second try."
$global:another_string = "Set in the sub script."
$simple_object.main_property = "Property set in the sub script."
$simple_object | Add-Member -MemberType NoteProperty -Name sub_property -Value "Property created in the sub script."
