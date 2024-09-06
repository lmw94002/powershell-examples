<#
    .synopsis
        Example of PowerShell Parameters
    .description
        Example of PowerShell Parameters and Parameter Validation
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        Validating inputs will help prevent unexpected outcomes in your script
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions_advanced_parameters?view=powershell-5.1
    .example
        PS> .\Example_Parameters.ps1 -myVar "Hello World"
#>

param (
    # Set the value of the myVar Variable
    [string]$myVar
)

write-output "Variable myVar is set to: $myVar"
