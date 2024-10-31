<#
    .synopsis
        Example of Comment Based Help
    .description
        Example of Comment Based Help for PowerShell Scripting
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        This should be the starter template for all your scripts. 
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comment_based_help?view=powershell-5.1 
    .example
        PS> .\Example_Arrays.ps1
#>

write-output "---------------------------------------------"
write-output " . Checking an Array against an Array ."
$myNames = @("Larry","John","mike","mo","bettyjo")
$myChecks = @("larry","moe","curly","JO")

write-output "My List of Names : $myNames"
write-output "My Name Checklist (Full/Partial) : $myChecks"

write-output "NOTE : -contains and -match are case insensitve"

write-output " .. FOREACH - Exact Match .."
foreach ($myName in $myNames) {
    if ($myChecks -contains $myName) {
        write-host "$myName found" -ForegroundColor Green
    } else {
        write-host "$myName not found" -ForegroundColor Red
    }
}

write-output " .. FOREACH - Full or Partial Match .."
foreach ($myName in $myNames) {
    if ($myChecks.where({$myName -match $_},'First')) {
        write-host "$myName found" -ForegroundColor Green
    } else {
        write-host "$myName not found" -ForegroundColor Red
    }
}

