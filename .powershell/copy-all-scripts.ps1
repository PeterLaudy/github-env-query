$dir = (Get-Item $env:GITHUB_WORKSPACE)
copy -Recurse -Force "$($dir.FullName)\.powershell" "$($dir.Parent.FullName)\.powershell"
& "$($dir.Parent.FullName)\.powershell\main-script.ps1"