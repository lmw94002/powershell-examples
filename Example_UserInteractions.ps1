<#
    .synopsis
        Example of Using User Console Interactions
    .description
        Getting User Input from a Console for PowerShell Script Execution
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        This should be the starter template for all your scripts. 
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/read-host?view=powershell-5.1
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/get-credential?view=powershell-5.1
    .example
        PS> .\Example_UserInteractions.ps1
#>

# IDEA : Prompt for User Input

# IDEA : Get User Credentials
Write-Output "You can capture a user/pwd with the get-credential commandlet."
$myCredential = get-credential -Message "Enter your Username and Password"

# IDEA : Create a Simple Menu
