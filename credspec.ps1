

Import-Module ActiveDirectory
Get-ADServiceAccount -Identity 09492DSDev4211W 
Install-ADServiceAccount -Identity 09492DSDev4211W 
Test-AdServiceAccount -Identity 09492DSDev4211W 

$url= "https://github.com/MicrosoftDocs/Virtualization-Documentation/blob/live/windows-server-container-tools/ServiceAccounts/CredentialSpec.psm1"
$output = "C:\CredentialSpec.psm1"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -OutFile $output

Import-Module C:\CredentialSpec.psm1

New-CredentialSpec -Name 09492DSDev4211W -AccountName 09492DSDev4211W