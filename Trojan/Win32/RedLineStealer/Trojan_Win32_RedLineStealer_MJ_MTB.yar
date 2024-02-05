
rule Trojan_Win32_RedLineStealer_MJ_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.MJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4d ec 8b 45 f8 8b d6 d3 ea 03 c6 50 ff 75 f0 03 55 d8 c7 05 90 01 08 89 55 f4 e8 90 01 04 31 45 f4 2b 7d f4 89 45 f0 25 90 01 04 8b c7 8d 4d f0 e8 90 01 04 8b 4d f8 8b c7 c1 e8 05 03 cf 89 45 f4 8b 45 e4 01 45 f4 8b 45 f0 03 45 dc 51 50 e8 90 01 04 8b 4d f4 89 45 f0 8d 45 f0 e8 90 01 04 2b 75 f0 89 1d 90 01 04 8b 45 d4 29 45 f8 ff 4d e8 0f 85 90 00 } //01 00 
		$a_00_1 = {c1 e0 04 89 01 c3 } //01 00 
		$a_03_2 = {89 55 fc b8 90 01 04 01 45 fc 8b 45 fc 8a 04 08 88 04 31 41 3b 0d 90 01 04 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}