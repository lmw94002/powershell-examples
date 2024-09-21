<#
    .synopsis
        Retrieve Web Page Content
    .description
        The Invoke-WebRequest cmdlet sends HTTP, HTTPS, FTP, and FILE requests to a web page or web service. It parses the response and returns collections of forms, links, images, and other significant HTML elements.
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        This should be the starter template for all your scripts. 
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-webrequest?view=powershell-5.1
    .example
        PS> .\Example_WebRequest.ps1
#>

write-output "Retrieving web page content ..."

write-output "Download a file via HTTP ..."
<# IDEA : Routinely retrieve the WSUSSCN2.CAB FILE #>