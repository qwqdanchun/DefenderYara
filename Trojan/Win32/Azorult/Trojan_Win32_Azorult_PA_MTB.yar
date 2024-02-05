
rule Trojan_Win32_Azorult_PA_MTB{
	meta:
		description = "Trojan:Win32/Azorult.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 cb 89 4c 24 10 8b 4c 24 18 03 c8 c1 e8 05 89 44 24 14 8b 44 24 2c 01 44 24 14 8b 44 24 10 33 c1 31 44 24 14 81 3d 90 01 04 ba 05 00 00 89 44 24 10 c7 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Azorult_PA_MTB_2{
	meta:
		description = "Trojan:Win32/Azorult.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {55 8b ec 83 c4 90 01 01 89 55 90 01 01 89 45 90 01 01 90 02 0a c6 45 90 01 02 90 02 0a 8b 45 90 01 01 89 45 90 01 01 90 02 0a 8b 45 90 01 01 8a 80 90 01 04 32 45 90 01 01 8b 55 90 01 01 88 02 90 02 0a 8b e5 5d c3 90 00 } //01 00 
		$a_02_1 = {8b 45 e0 89 45 90 01 01 90 02 10 8b 45 90 01 01 89 45 90 01 01 90 02 10 8b 45 90 01 01 01 45 90 01 01 90 02 10 8b 55 90 01 01 8b 45 90 01 01 e8 90 01 04 ff 45 90 01 01 81 7d 90 01 03 00 00 75 90 00 } //01 00 
		$a_02_2 = {55 8b ec 83 c4 90 01 01 89 90 01 01 f8 90 02 05 89 45 fc 90 02 0a c6 45 90 01 02 90 02 0a 8b 45 fc 89 45 90 01 01 90 02 0a 8b 45 90 01 01 8a 80 90 01 04 90 02 10 32 45 90 01 01 90 02 10 8b 90 01 01 f8 90 02 05 88 90 01 01 90 02 0a 8b e5 5d 90 00 } //01 00 
		$a_02_3 = {8b 45 e4 89 45 90 01 01 90 02 0a 8b 45 90 01 01 89 45 90 01 01 90 02 0a 8b 45 90 01 01 01 45 90 01 01 90 02 0a e8 90 01 04 50 8b 4d 90 01 01 90 02 0a e8 90 01 04 ff 45 90 01 01 81 7d 90 01 03 00 00 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}