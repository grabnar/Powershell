# Upload BC licence file: Upload licence to Docker Container with Business Central service
# Author: Branko Sodja

docker exec -ti 4a powershell
cd 'c:\' 
cd '.\Program Files\Microsoft Dynamics NAV\150\Service\' 
.\NavAdminTool.ps1
cd 'c:\Run\my\' 
Import-NAVServerLicense 'MicrosoftDynamicsNavServer$BC' -LicenseData ([Byte[]]$(Get-Content -Path "fin.flf" -Encoding Byte))
Restart-Service 'MicrosoftDynamicsNavServer$BC' 