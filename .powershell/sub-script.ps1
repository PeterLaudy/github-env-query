# PowerShell sub script. Calledfrommain-script with certain parameters.

Write-Output "There are a total of $($args.count) arguments"
For ( $i = 0; $i -lt $args.Count; $i++ ) {
    Write-Output "Argument  $i => $($args[$i])"
    $args[$i].GetType()
} 