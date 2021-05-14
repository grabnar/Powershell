# Convert TXT to AL: demo converting objects from NAV to BC 
# Author: Branko Sodja

Import-Module “C:\Program Files (x86)\Microsoft Dynamics NAV\110.28629\RoleTailored Client\Microsoft.Dynamics.Nav.Model.Tools.psd1" -force
Export-NAVApplicationObject "D:\My Projects\HRP2BC\CAL_Objects\Temp.txt" -DatabaseServer 'NAVDEV-LJ-19' -DatabaseName 'ADACTA_NAV_110_DEV_SI' -ExportToNewSyntax -Filter 'ID=13057001' -LogPath 'D:\My Projects\HRP2BC\CAL_Objects'
Split-NAVApplicationObjectFile -Source "D:\My Projects\HRP2BC\CAL_Objects\Temp.txt" -Destination "D:\TEMP\AL\OLD\"
$txt2al = "C:\ProgramData\NavContainerHelper\Extensions\bcinsider-29557\Program Files\140\RoleTailored Client\txt2al.exe"
$cmd2 = @('--source=D:\TEMP\AL\OLD\','--target=D:\TEMP\AL\NEW\')
&$txt2al $cmd2