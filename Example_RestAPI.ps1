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

write-output "Getting the PowerState of a DELL Server via iDRAC..."
# Define the iDRAC credentials and server details
$idracUser = "root"
$idracCred = get-credential -User $idracuser -Message "Enter iDRAC Password"
$idracIP = "172.27.69.201"
$idracURL = "https://$idracIP/redfish/v1/Systems/System.Embedded.1" 
$idracResponse = Invoke-RestMethod -Uri $idracURL -Method Get -Credential $idracCred -SkipCertificateCheck
Write-Host "$($myIDRAC.Name) Power State: $($idracResponse.PowerState)"