# join-domain.ps1
# Joins a Windows client to the domain

$domain = "corp.lab.local"
$username = "CORP\Administrator"
$password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($username, $password)

Add-Computer -DomainName $domain -Credential $credential -Restart
