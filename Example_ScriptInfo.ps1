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

Write-Host "PSVersion: $($PSVersionTable.PSVersion)"
Write-Host ""
Write-Host "`$PSCommandPath:"
Write-Host " *   Direct: $PSCommandPath"
Write-Host " * Function: $(PSCommandPath)"
Write-Host ""
Write-Host "`$MyInvocation.ScriptName:"
Write-Host " *   Direct: $($MyInvocation.ScriptName)"
Write-Host " * Function: $(ScriptName)"
Write-Host ""
Write-Host "`$MyInvocation.MyCommand.Name:"
Write-Host " *   Direct: $($MyInvocation.MyCommand.Name)"
Write-Host " * Function: $(MyCommandName)"
Write-Host ""
Write-Host "`$MyInvocation.MyCommand.Definition:"
Write-Host " *   Direct: $($MyInvocation.MyCommand.Definition)"
Write-Host " * Function: $(MyCommandDefinition)"
Write-Host ""
Write-Host "`$MyInvocation.PSCommandPath:"
Write-Host " *   Direct: $($MyInvocation.PSCommandPath)"
Write-Host " * Function: $(MyInvocationPSCommandPath)"

write-output "Script Runtime $((new-timespan -Start $myScriptStart -End (get-date)).TotalSeconds) seconds" 