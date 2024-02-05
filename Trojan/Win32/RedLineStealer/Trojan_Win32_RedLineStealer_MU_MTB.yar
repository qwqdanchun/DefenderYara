
rule Trojan_Win32_RedLineStealer_MU_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.MU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4d f0 a1 90 01 04 03 4d 90 01 01 3d a9 0f 00 00 75 90 01 01 c7 05 90 01 08 3d eb 03 00 00 75 90 01 01 83 25 90 01 05 8b 45 f8 03 c6 50 8b c1 c7 05 90 01 08 e8 90 01 04 8b 4d f4 d3 ee 89 45 90 01 01 03 75 90 01 01 33 f0 2b fe 25 90 01 04 8b c7 8d 4d f0 e8 90 01 04 8b 4d 90 01 01 8b c7 c1 e8 05 89 45 e8 8d 45 e8 e8 90 01 04 8b 45 90 01 01 03 c7 50 8b 45 90 01 01 03 c3 e8 90 01 04 50 89 45 90 01 01 8d 45 90 01 01 50 8b 45 90 01 01 e8 90 01 04 8b 4d 90 01 01 83 25 90 01 05 8d 45 ec e8 90 01 04 8b 45 90 01 01 29 45 90 01 01 ff 4d 90 01 01 0f 85 90 00 } //01 00 
		$a_00_1 = {c1 e0 04 89 01 c3 } //01 00 
		$a_03_2 = {89 55 fc b8 90 01 04 01 45 fc 8b 45 fc 8a 04 08 88 04 31 41 3b 0d 90 01 04 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}