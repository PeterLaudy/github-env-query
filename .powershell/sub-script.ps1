# PowerShell sub script. Called from main-script with certain parameters.

Write-Output "There are a total of $($args.count) arguments"
For ( $i = 0; $i -lt $args.Count; $i++ ) {
    $type = $args[$i].GetType() | Select -ExpandProperty Name
    Write-Output "Argument  $i => $($args[$i]) ($type)"
}

# Trying to return a parameter to the calling script.
$global:return_value="Result returned from sub-script (42)"