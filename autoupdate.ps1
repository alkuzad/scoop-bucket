$script = "$PWD\scoop\bin\checkver.ps1"
$out = (& $script -Dir $PWD/bucket -Update 6>&1)

Write-Host $out

if (Write-Output $out | Select-String "Autoupdating") {
    Write-Output "updated=true" >> $env:GITHUB_ENV
}
