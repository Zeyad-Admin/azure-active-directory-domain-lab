# install-ad-ds.ps1
# Installs Active Directory Domain Services and promotes the server to a Domain Controller

Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

Import-Module ADDSDeployment

Install-ADDSForest `
 -DomainName "corp.lab.local" `
 -DomainNetbiosName "CORP" `
 -InstallDNS `
 -SafeModeAdministratorPassword (ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force) `
 -Force
