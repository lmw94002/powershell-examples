<#
    .synopsis
        Copy this Script for Starting New Example
    .description
        Start here when making a new PowerShell Script Example
    .link
        Link to where to get this script
        https://github.com/lmw94002/powershell-examples
    .notes
        Notes, Details, and more LInks
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_for?view=powershell-5.1
    .parameter debug
        Turn on extra info to help debug the Script
    .example
        PS> .\Example_StarterScript.ps1
#>
## Script Included Bits ##
param(
    [switch]$debug
)
$myScriptStart = (get-date)
$myLogFile = $PSCommandPath+"_"+$myScriptStart.tostring("yyyyMMdd-hhmm")+".log"
## Script Included Bits ##

write-output "Hello World"
if ($debug) {write-output "** DEBUG INFO HERE" | Tee-Object -filepath $myLogFile -Encoding ASCII -Append}

## Script Included Bits ##
write-output "`n`n .. Script Execution Time $((new-timespan -Start $myScriptStart).TotalSeconds) seconds" | Tee-Object -filepath $myLogFile -Encoding ASCII -Append
## Script Included Bits ##
