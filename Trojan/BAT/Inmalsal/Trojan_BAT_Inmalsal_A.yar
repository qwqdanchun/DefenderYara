
rule Trojan_BAT_Inmalsal_A{
	meta:
		description = "Trojan:BAT/Inmalsal.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 65 62 43 6c 69 65 6e 74 00 53 79 73 74 65 6d 2e 4e 65 74 } //01 00  敗䍢楬湥t祓瑳浥丮瑥
		$a_01_1 = {73 76 63 68 6f 73 74 2e 65 78 65 00 3c 4d 6f 64 75 6c 65 3e } //01 00 
		$a_01_2 = {73 76 63 68 6f 73 74 2e 70 64 62 } //01 00  svchost.pdb
		$a_01_3 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //00 00  {11111-22222-50001-00000}
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Inmalsal_A_2{
	meta:
		description = "Trojan:BAT/Inmalsal.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 65 62 43 6c 69 65 6e 74 00 53 79 73 74 65 6d 2e 4e 65 74 } //01 00  敗䍢楬湥t祓瑳浥丮瑥
		$a_01_1 = {75 73 62 73 76 2e 65 78 65 00 3c 4d 6f 64 75 6c 65 3e } //01 00 
		$a_01_2 = {75 73 62 73 76 2e 73 74 61 72 74 75 70 73 76 2e 72 65 73 6f 75 72 63 65 73 } //01 00  usbsv.startupsv.resources
		$a_01_3 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //00 00  {11111-22222-50001-00000}
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Inmalsal_A_3{
	meta:
		description = "Trojan:BAT/Inmalsal.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 65 62 43 6c 69 65 6e 74 00 53 79 73 74 65 6d 2e 4e 65 74 } //01 00  敗䍢楬湥t祓瑳浥丮瑥
		$a_01_1 = {73 76 63 68 6f 73 74 2e 50 72 6f 6a 65 63 74 49 6e 73 74 61 6c 6c 65 72 2e 72 65 73 6f 75 72 63 65 73 } //01 00  svchost.ProjectInstaller.resources
		$a_01_2 = {73 76 63 68 6f 73 74 2e 73 76 63 68 6f 73 74 2e 72 65 73 6f 75 72 63 65 73 } //01 00  svchost.svchost.resources
		$a_01_3 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //00 00  {11111-22222-50001-00000}
	condition:
		any of ($a_*)
 
}