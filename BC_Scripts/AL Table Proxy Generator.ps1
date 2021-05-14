# Table Proxy Generator: demo for ELES project - entities cdm_worker, cdm_workeraddress in dataverse
# Author: Branko Sodja 

$ProjectPath = 'D:\Repositories\ELES.BC\Eles BC\sources\ElesPay.code'
$PackagecachePath = 'D:\Repositories\ELES.BC\Eles BC\sources\ElesPay.code\.alpackages'
$ServiceUrl = 'https://eles-uat365.crm4.dynamics.com'
$AlAltpgenPath = 'C:\Users\branko.sodja\.vscode\extensions\ms-dynamics-smb.al-6.1.397164\bin'

cd $AlAltpgenPath
.\altpgen -project:$ProjectPath -packagecachepath:$PackagecachePath -serviceuri:$ServiceUrl -entities:cdm_worker,cdm_workeraddress -baseid:70050 -tabletype:CDS
