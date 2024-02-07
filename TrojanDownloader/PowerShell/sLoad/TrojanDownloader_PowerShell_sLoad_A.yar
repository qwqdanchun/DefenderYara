
rule TrojanDownloader_PowerShell_sLoad_A{
	meta:
		description = "TrojanDownloader:PowerShell/sLoad.A,SIGNATURE_TYPE_CMDHSTR_EXT,28 00 28 00 04 00 00 0a 00 "
		
	strings :
		$a_00_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 } //0a 00  schtasks
		$a_00_1 = {61 00 70 00 70 00 72 00 75 00 6e 00 4c 00 6f 00 67 00 } //0a 00  apprunLog
		$a_00_2 = {2e 00 76 00 62 00 73 00 } //0a 00  .vbs
		$a_00_3 = {31 00 2c 00 32 00 2c 00 33 00 2c 00 34 00 2c 00 35 00 2c 00 36 00 2c 00 37 00 2c 00 38 00 2c 00 39 00 2c 00 31 00 30 00 2c 00 31 00 31 00 2c 00 31 00 32 00 2c 00 31 00 33 00 2c 00 31 00 34 00 2c 00 31 00 35 00 2c 00 31 00 36 00 } //00 00  1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_PowerShell_sLoad_A_2{
	meta:
		description = "TrojanDownloader:PowerShell/sLoad.A,SIGNATURE_TYPE_CMDHSTR_EXT,50 00 50 00 08 00 00 0a 00 "
		
	strings :
		$a_00_0 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 } //0a 00  bitsadmin
		$a_00_1 = {74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 } //0a 00  transfer
		$a_00_2 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 } //0a 00  download
		$a_00_3 = {63 00 61 00 70 00 74 00 63 00 68 00 61 00 2e 00 70 00 68 00 70 00 } //0a 00  captcha.php
		$a_00_4 = {26 00 76 00 3d 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 } //0a 00  &v=microsoft windows
		$a_00_5 = {2a 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2a 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2a 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2a 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2a 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 } //0a 00  *svchost*svchost*svchost*svchost*svchost
		$a_00_6 = {2a 00 77 00 69 00 6e 00 69 00 6e 00 69 00 74 00 2a 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 2a 00 } //0a 00  *wininit*winlogon*
		$a_00_7 = {26 00 63 00 70 00 75 00 3d 00 } //00 00  &cpu=
	condition:
		any of ($a_*)
 
}