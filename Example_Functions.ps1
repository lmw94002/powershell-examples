<#
    .synopsis
        Copy this Script for Starting New Example
    .description
        Start here when making a new PowerShell Script Example
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        Loops using FOR, FOREACH, DO/WHILE, WHILE
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_for?view=powershell-5.1
    .example
        PS> .\Example_Starter.ps1
#>
$myScriptStart = (get-date)

write-output "Hello World"

write-output "Script Runtime $((new-timespan -Start $myScriptStart -End (get-date)).TotalSeconds) seconds" 