<#
    .synopsis
        Example of using Split and Join
    .description
        Examples of Split and Join usage in PowerShell
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        This should be the starter template for all your scripts. 
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_split?view=powershell-5.1
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_join?view=powershell-5.1
    .example
        PS> .\Example_SplitJoin.ps1
#>

$myIP = "192.168.100.100"
$myLastOctet = $myIP.split('.')[3]
write-output "The last octet of $myIP is $myLastOctet"
