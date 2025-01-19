<#
    .synopsis
        Examples using the Split-Path Commandlet
    .description
        Examples using the Split-Path Commandlet to return specific path components
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        Returns the specified part of a path.
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/split-path?view=powershell-5.1 
    .example
        PS> .\Example_SplitPath.ps1
#>

$myExample = "C:\Windows\System32\w32tm.exe"
write-output "Example Path Object : $myExample "

write-output "The -leaf option returns just the file name ...
split-path $myExample -Leaf

write-output "The -parent option returns the full path w/o trailing slash ...
split-path $myExample -Parent
