<#
    .synopsis
        Example of using dates and time in powershell and execution time
    .description
        Using date and/or time elements in your powershell scripts,
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        This should be the starter template for all your scripts. 
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-date?view=powershell-5.1
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/new-timespan?view=powershell-5.1
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/measure-command?view=powershell-5.1
    .example
        PS> .\Example_DateTime.ps1
#>

$myStart = Get-Date

# Using a TimeDate Stamp for logging/output files
$myTimeDate = get-date -format yyyyMMdd_HHmm
write-output "Add $myTimeDate extension to backup files..."

# Measuring the time to an Action
measure-command { sleep 2 }

# Script Execution Time Calculation
sleep 2
write-output "Execution Time : $((New-Timespan -Start $myStart -End (get-date)).TotalSeconds) seconds"