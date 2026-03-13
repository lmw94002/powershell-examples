<#
    .synopsis
        Get ENV and Script Info
    .description
        Get information about the powershell environment and script execution
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        Get information about Automatic Variables here
        hhttps://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_automatic_variables?view=powershell-7.4
    .example
        PS> .\Example_ScriptEnvInfo.ps1
#>
$myScriptStart = (get-date)

# Script Execution Details
write-host "`$PSCommandPath contains the full path and name of the currently executing script."
$PSCommandPath | Format-List | Tee-Object -filepath $myLogFile -Encoding ASCII -Append

write-host "`$PSScriptRoot contains the directory from which the script is being run, without the script name."
$PSScriptRoot | Format-List | Tee-Object -filepath $myLogFile -Encoding ASCII -Append

write-host "`$PSVersionTable contains a read-only hash table that displays details about the version of PowerShell that's running in the current session."
$PSVersionTable | Format-List | Tee-Object -filepath $myLogFile -Encoding ASCII -Append

write-host "Another way to get information is using the 'get-host' Commandlet."
get-host | Format-List | Tee-Object -filepath $myLogFile -Encoding ASCII -Append

write-host "Get a list of installed modules and their location with 'Get-Module -ListAvailable'"
Get-Module -ListAvailable | Tee-Object -filepath $myLogFile -Encoding ASCII -Append

write-output "Script Runtime $((new-timespan -Start $myScriptStart -End (get-date)).TotalSeconds) seconds" 