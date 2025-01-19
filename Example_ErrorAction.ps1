<#
    .synopsis
        Examples of ErrorActions
    .description
        Examples of PowerShell Scripting ErrorActions
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        Using Error Actions in Scripts
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_commonparameters?view=powershell-5.1
    .example
        PS> .\Example_ErrorAction.ps1
#>

get-content C:\MissingFile.txt

try {
    get-content C:\MissingFile.txt
}
catch {
    Write-Output "Something went wrong!"
}

try {
    get-content C:\MissingFile.txt -ea stop
}
catch {
    Write-Output "Something went wrong!"
}
