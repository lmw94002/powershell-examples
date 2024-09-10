<#
    .synopsis
        Example of using REST API via Powershell
    .description
        Examples of using the Restful API calls with PowerShell
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        This should be the starter template for all your scripts. 
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-restmethod?view=powershell-5.1 
    .example
        PS> .\Example_RestAPI.ps1
#>

write-output "Retrieving PowerShell RSS feed..."
Invoke-RestMethod -Uri https://devblogs.microsoft.com/powershell/feed/ | Format-Table -Property Title, pubDate
