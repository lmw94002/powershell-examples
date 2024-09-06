<#
    .synopsis
        Example of Comment Based Help
    .description
        Example of Comment Based Help for PowerShell Scripting
    .parameter foo
        Sets the FOO variable to the value provided
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        This should be the starter template for all your scripts. 
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comment_based_help?view=powershell-5.1 
    .example
        PS> get-help .\Example_CommentBasedHelp.ps1 -Full
    .example
        PS> .\Example_CommentBasedHelp.ps1 
#>

param (
    # This sets the FOO variable
    [string]$foo
)

write-output "Hello World"
