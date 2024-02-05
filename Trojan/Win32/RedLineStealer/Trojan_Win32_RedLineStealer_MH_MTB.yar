
rule Trojan_Win32_RedLineStealer_MH_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.MH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 45 fc 8b 4d f0 03 c7 8b f7 d3 ee 50 ff 75 f4 c7 05 90 01 08 03 75 e4 e8 90 01 04 33 f0 89 45 f4 89 75 ec 8b 45 ec 29 45 f8 25 90 01 04 8b 55 f8 8b c2 8d 4d f4 e8 90 01 04 8b 75 fc 8b 4d d8 03 f2 c1 ea 05 8d 45 ec 89 55 ec e8 90 00 } //01 00 
		$a_00_1 = {c1 e0 04 89 01 c3 } //01 00 
		$a_03_2 = {89 55 fc b8 90 01 04 01 45 fc 8b 45 fc 8a 04 08 88 04 31 41 3b 0d 90 01 04 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}