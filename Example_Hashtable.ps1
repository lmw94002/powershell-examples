<#
    .synopsis
        Example of using a Hashtables
    .description
        Example of Hashtables in PowerShell
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        This should be the starter template for all your scripts. 
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_hash_tables?view=powershell-5.1
    .example
        PS> .\Example_Hashtable.ps1
#>

Write-Output "-- HASHTABLE --"
$myhashtable = @{
    "FirstName" = "John"
    "LastName" = "Doe"
    "Age" = "49"
    "Sex" = "Male"
}
Write-Output $myhashtable

# Ensure the key values print out in the specefic order
Write-Output "-- ORDERED HASHTABLE --"
$myhashtable = [ordered]@{
    "FirstName" = "Jane"
    "LastName" = "Doe"
    "Age" = "50"
    "Sex" = "Female"
}
Write-Output $myhashtable
